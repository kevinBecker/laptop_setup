
# This is run by .zprofile
# This file sets defaults for my zsh enviornment

############################################################
#                         ZSH VARS                         #
############################################################
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Timestamps. See 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=$ZSH/custom # default

# For a full list of active aliases, run `alias`.

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

ZSH_THEME="kevinbecker1" # also see https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

HYPHEN_INSENSITIVE="true" #  _ and - will be interchangeable with autocomplete

ENABLE_CORRECTION="true" # Uncomment the following line to enable command auto-correction.

# Uncomment the following line to display red dots whilst waiting for completion. Ex: COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f" # to change it
COMPLETION_WAITING_DOTS="true"

setopt APPEND_HISTORY

setopt HIST_IGNORE_SPACE

############################################################
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Too many plugins slow down shell startup.
############################################################
plugins=(git
  zsh-autosuggestions
  emoji
  #per-directory-history
  #thefuck

)

############################################################
# Preferred editor for local and remote sessions
############################################################
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi



############################################################
# Weird bug with xQuartz
############################################################
export DISPLAY=:0

############################################################
# Setup of tf
############################################################


############################################################
# Source remaining files
############################################################
source $ZSH/oh-my-zsh.sh
source $DOTFILES/.aliases
source $DOTFILES/.moos_setup

#-------------------------------------------------------
# Useful setting for MacOS to prevent zsh advertisement
#-------------------------------------------------------
export BASH_SILENCE_DEPRECATION_WARNING=1


# Created by `pipx` on 2024-08-17 16:11:49
export PATH="$PATH:/Users/kjbecker00/.local/bin"
source <(kubectl completion zsh)

