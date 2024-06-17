# echo ".zprofile"

if [[ "$(uname)" == "Darwin" ]]; then
    # Do something under Mac OS X platform
    PATH="/opt/homebrew/sbin:${PATH}"
    PATH="/opt/homebrew/bin:${PATH}"
fi

############################################################
# Set enviornment
# https://superuser.com/questions/789448/choosing-between-bashrc-profile-bash-profile-etc
############################################################

# Sets requried variables. Should be a shell (not bash or zsh) script, 
# so everything else can run this. Includes machine specific items/locaitons.
source ~/.profile

# Defaults which are standard across all my machines. 
# This should then call everything else. No output here.
#   source $ZSH/oh-my-zsh.sh
#   source $DOTFILES/.aliases
#   source $DOTFILES/.moos_setup
#       source "${CARLO_DIR_LOCATION}/monte_info" 
source "$DOTFILES"/.zshrc   

# Print out reminders of aliases and other stuff
#   adds its own reminder aliases.
. $DOTFILES/reminders.sh    

#------------------------------------------------------
#  Export remaining variables
#-------------------------------------------------------
# Remove duplicates
NEW_PATH=$( python3 -c "import os; path = os.environ['PATH'].split(':'); print(':'.join(sorted(set(path), key=path.index)))" )
if [[ $? -eq 0 ]]; then
  PATH="$NEW_PATH"
fi

export PATH

