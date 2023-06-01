
# hostname
PROMPT="%F{magenta}${${(%):-%m}}%f"
# colored arrow
PROMPT+="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ ) %{$fg[cyan]%}%c%{$reset_color%}"


# git info, if exists
PROMPT+=' $(git_prompt_info)'
# dir in blue before git info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
# reset color after git info
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

# x for uncommitted changes
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"



