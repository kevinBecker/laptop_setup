#!/bin/bash
# Kevin Becker Jun 9 2023

ME="catstat.sh"
NUMBER_OF_LINES=1
NEX_ARG_IS=""
STATDIR="/home/yodacora/monte-moos/clients/status/"


catone(){
    # 1 = name.txt
    # 2 = number of lines
    if [[ $2 -eq 1 ]]; then
        echo -n "$(tput bold)$(tput setaf 2)$(basename $1)$(tput sgr0)"
        echo "  $(head -n $2 $1)"
    else
        echo ""
        echo "$(tput bold)$(tput setaf 2)$(basename $1)$(tput sgr0)"
        echo "$(head -n $2 $1)"
    fi
}


#-------------------------------------------------------
#  Part 1: Check for and handle command-line arguments
#-------------------------------------------------------
for ARGI; do
    ALL_ARGS+=$ARGI" "

    if [[ "$LAST_ARG" = "-n" ]]; then
        NUMBER_OF_LINES="${ARGI}"
        LAST_ARG=""
    elif [[ "${ARGI}" = "--help" || "${ARGI}" = "-h" ]]; then
        echo "$ME.sh [OPTIONS]"
        echo "                                                          "
        echo " This is a script used check status of clients. "
        echo "                                                          "
        echo "Options:                                                  "
        echo " -n         Specify number of lines to print                        "
        exit 0
    elif [[ "${ARGI}" = "--hostless" || "${ARGI}" = "-nh" ]]; then
        HOSTLESS="--hostless"
    elif [[ "${ARGI}" = "-p" ]]; then
        PERPETUAL="yes"
    elif [[ "${ARGI}" = "-y" ]]; then
        IGNORE_WARNING="yes"
    elif [[ "${ARGI}" = "-n" ]]; then
        LAST_ARG="${ARGI}"
    else
        if [[ -f "${STATDIR}/${ARGI}.txt" ]]; then
            catone $STATDIR/${ARGI}.txt  $NUMBER_OF_LINES
            exit 0
        else
            echo "Unrecognized option: $ARGI" 
            exit 1
        fi
    fi
done



for file in $(find $STATDIR -mindepth 1 -mmin -3 | sort) ; do
    if [[ -f "$file" ]]
    then
        if [[ "$file" == *.txt ]]
        then    
            catone $file $NUMBER_OF_LINES
        fi
    fi
done



