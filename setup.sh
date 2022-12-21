echo “Reminder to install Zoom and Rhino”


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/kevinBecker/laptop_setup.git

export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

brew install --cask visual-studio-code
