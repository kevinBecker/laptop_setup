#!/usr/bin/env bash
DOTFILES="/${HOME}/setup"

link_home() {
    rm -f ~/$1
    ln -s ${DOTFILES}/$1 /${HOME}/$1
}

link_home .zshrc
link_home .vimrc
link_home .zprofile
link_home .pablo_names

rm -f ~/.config/nvim/init.lua
ln -s ${DOTFILES}/nvim_init.lua ~/.config/nvim/init.lua

rm -f $ZSH/custom/themes/kevinbecker1.zsh-theme
ln -s ${DOTFILES}/kevinbecker1.zsh-theme $ZSH/custom/themes/kevinbecker1.zsh-theme




# if [[ "$(uname)" == "Linux" ]]; then
    rm -f ~/Library/Application\ Support/Code/User/settings.json
    ln -s ${DOTFILES}/vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json
# fi

echo "vimrc, zshrc, pablo_names have been reloaded. vscode default json settings updated"
#code --install-extension moos-ivp-editor-0.2.0.vsix

echo "Remember to re-source ~/.zshrc"
