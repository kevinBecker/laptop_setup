

#-----------------------------------------------
# Setup script for Kevin Becker's Computer Setup
# See git clone https://github.com/kevinBecker/laptop_setup.git
#-----------------------------------------------



#-----------------------------------------------
# oh-my-zshell install
#-----------------------------------------------
if [ "$(uname)" == "Linux" ]; then
    # Install zsh under GNU/Linux platform
    apt install zsh
fi

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install zsh autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


#-----------------------------------------------
# MacOS specific installs
#-----------------------------------------------
if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform 
    # Install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Install vscode and let me use the "code" plugin thing
    brew install --cask visual-studio-code
    brew install git
    brew install git
    brew install vim
    brew install tree
    # Install xterm (MOOS IVP)
    brew install xterm
    # Install xquartz (MOOS IVP on mac, if newterminal=true)
    brew install xquartz
    brew install wget
    # Install BLAS (MOOS IVP PAVLAB sandbox mac)
    brew install --cask dbglass
    # Install Armadillo (MOOS IVP PAVLAB sandbox mac)
    brew install armadillo
    # Install protobuf (for MOOS_IVP_CHAMP)
    brew install protobuf
    brew install python3
    # brew install Node.js
    # brew install jupyter-lab
    # brew install gdb
    brew install shellcheck
    brew install ninja
    brew install nvim
    brew install libvirt
    brew install --cask utm
    brew install trash
    echo "Installed mac specific programs"
    export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fi


#-----------------------------------------------
# Linux specific installs
#-----------------------------------------------
if [ "$(uname)" == "Linux" ]; then
    # Install zsh under GNU/Linux platform
    apt install zsh
    apt install git
    apt install vim
    apt install shellcheck
    apt install ninja
    apt install nvim
    apt install libvirt
    apt install virtualbox
    echo "Installed linux specific programs"
fi



#----------------------------------------------
# Debugging tools to download
#----------------------------------------------
pip install --upgrade pyflakes



#-----------------------------------------------
# Reminders to install other programs
#-----------------------------------------------
git clone https://github.com/raymondturrisi/pavlab_shorts

echo "Reminder to run xquartz via terminal after this script or errors will occur"
echo “Reminder to install Zoom, Rhino, goodnotes,  and Slic3r”
echo "Install pydrake and underactuated"
echo "Install SuperSlicer"



./reload.zsh
