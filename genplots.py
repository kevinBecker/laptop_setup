#!/usr/bin/env python3
import csv
import sys
import matplotlib.pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd

# Examine the data at a specific time
specific_time = 300

def getnum(x):
    """Returns a number from a string"""
    try:
        return float(x)
    except ValueError:
        return None



def plot_csv(input_files, fname, plot_title):

    marker = "."
    size = 10
    for csv_file in input_files:
        data = pd.read_csv(csv_file, delimiter=' ')
        data = np.genfromtxt(csv_file, delimiter=' ')

        with open(csv_file) as f:
            this_label = f.readline().split(' ')[1]

        
        plt.plot(data[:,0].astype(float), data[:,2].astype(float), label=this_label)#, # marker=marker, s=size)
    
    if len(input_files)==2:
        rmse_before,rmse_after=get_rmse(input_files)
        plt.title(plot_title + f" (RMS Error = {round(rmse_before,3)} before, {round(rmse_after,3)} after {specific_time}s)")
    else:   
        plt.title(plot_title)
    
    # ensure some figure name is set (no hash and no argument for figurename)
    plt.xlabel("Time (s)")
    plt.legend()
    plt.savefig(fname)
    plt.clf()


def get_rmse(input_files):
    
    # Load the data
    df_a = pd.read_csv(input_files[0], delim_whitespace=True, names=['Time', 'Variable', 'Value'])
    df_b = pd.read_csv(input_files[1], delim_whitespace=True, names=['Time', 'Variable', 'Value'])

    # Trim the longer dataframe
    start_time = max(df_a['Time'].min(), df_b['Time'].min())
    end_time = min(df_a['Time'].max(), df_b['Time'].max())

    df_a = df_a[(df_a['Time'] >= start_time) & (df_a['Time'] <= end_time)]
    df_b = df_b[(df_b['Time'] >= start_time) & (df_b['Time'] <= end_time)]

    # Interpolate to synchronize the timestamps
    df_a.set_index('Time', inplace=True)
    df_b.set_index('Time', inplace=True)

    common_time_index = df_a.index.union(df_b.index)

    df_a = df_a.reindex(common_time_index).interpolate(method='linear')
    df_b = df_b.reindex(common_time_index).interpolate(method='linear')





    # Trim the data before the specific_time
    # Trim the data before the specific_time
    df_a_before = df_a[df_a.index < specific_time]
    df_b_before = df_b[df_b.index < specific_time]

    df_a_after = df_a[df_a.index >= specific_time]
    df_b_after = df_b[df_b.index >= specific_time]


    # Calculate the RMS error
    rms_error_before = np.sqrt(np.mean((df_a_before['Value'] - df_b_before['Value'])**2))

    # Calculate the RMS error
    rms_error_after = np.sqrt(np.mean((df_a_after['Value'] - df_b_after['Value'])**2))

    
    return rms_error_before, rms_error_after




def display_help():
    """Prints help for use on command line"""
    print("Usage: pltcsv.py --fname=figure [OPTIONS] [file].csv                    ")
    print("     This python script will input a csv and plot the values            ")
    print("     --fname=<figure.png>    The name of the output figure. Defaults to ")
    print("                             figure.                                    ")
    print("                             Note: the file extension must be supported ")
    print("                             by matplotlib.pyplot.savefig()             ")
    print("                             (png, jpg, jpeg, tiff, pdf, eps, svg)      ")
    print("     --ftype=<png>           If the figure type is not specified, this  ")
    print("                             will force a specific file type.           ")
    print("     -x=a,b                  Which vairables to make plots for where    ")
    print("                             each var is the x axis.                    ")
    print("     -y=c,d,e;f,g            Which variabes to plot on the y axis given ")
    print("                             an x (this plots c,d,e vs a and f,g vs b)  ")
    print("     --title=<something>     Title printed on the graph                 ")
    print(" Example usage:                                                         ")
    print(" pltcsv.py --fname=figure.png -x=0 -y=1,3,2,4 --title=\"Title\" file.csv")


def main():
    """Handles args, run on cmd line"""
    arg = []
    input_files = []
    figname = "figure"
    file_type = ""
    plot_title = ""
    for (i, arg) in enumerate(sys.argv):
        # skip over the name of this script
        if i == 0:
            continue
        if arg.startswith("-h") or arg.startswith("--help"):
            display_help()
            exit(0)
        if arg.startswith("--fname="):
            figname = arg[len("--fname="):]
            continue
        if arg.startswith("--ftype"):
            file_type = arg[len("--ftype="):]
            continue
        if arg.startswith("--title"):
            plot_title = arg[len("--title="):]
            continue
        if arg.startswith("-x"):
            x_cols = [x.strip() for x in arg[len("-x="):].split(";")]
            continue
        if arg.startswith("-y"):
            y_plots = [[y.strip() for y in ys.split(",")]
                       for ys in arg[len("-y="):].split(";")]
            continue
        if arg.endswith(".csv"):
            input_files.append(arg)
            continue
        assert False, f"Error: {arg} is not a valid argument. Use -h or --help for usage."

    if len(input_files) == 0:
        assert False, "Error: no input file specified. Use -h or --help for usage."

    print(f"INPUT FILES={input_files}")
    plot_csv(input_files, figname, plot_title)


if __name__ == '__main__':
    main()
