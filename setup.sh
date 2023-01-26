#-----------------------------------------------
# Setup script for Kevin Becker's Computer Setup
# See git clone https://github.com/kevinBecker/laptop_setup.git
#-----------------------------------------------


# Reminders to install other programs
echo “Reminder to install Zoom, Rhino, goodnotes,  and Slic3r”

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install vscode and let me use the "code" plugin thing
brew install --cask visual-studio-code
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Install zsh autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install tree
brew install tree

# Install xterm (MOOS IVP)
brew install xterm

# Install BLAS (MOOS IVP PAVLAB sandbox mac)
#brew install --cask dbglass

# Install Armadillo (MOOS IVP PAVLAB sandbox mac)
#brew install armadillo

# Install protobuf (MOOS_IVP_CHAMP)
brew install protobuf

./reload.sh
