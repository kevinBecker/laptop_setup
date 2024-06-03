# echo ".zprofile"

if [[ "$(uname)" == "Darwin" ]]; then
    # Do something under Mac OS X platform
    PATH=/opt/homebrew/sbin:$PATH
    PATH=/opt/homebrew/bin:$PATH
fi

source ~/setup/.zsh_defaults
source ~/setup/.aliases
source ~/setup/.moos_setup
source ~/setup/heron_aliases
source ~/setup/reminders.sh

PATH+=":${HOME}/.bin"

alias myip='ifconfig en0 |  grep inet'
alias cdset='cd ~/setup'

#------------------------------------------------------
# Useful setting for MacOS to prevent zsh advertisement
#-------------------------------------------------------
export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH
