#echo "Sourcing .profile..."
#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform 
    PATH=/opt/homebrew/sbin::$PATH
    PATH=/opt/homebrew/bin::$PATH

source ~/setup/.aliases
source ~/setup/.moos_setup

#-------------------------------------------------------
# Useful setting for MacOS to prevent zsh advertisement
#-------------------------------------------------------
export BASH_SILENCE_DEPRECATION_WARNING=1


export PATH
