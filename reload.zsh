
"cp" .vimrc ~/.vimrc
"cp" .zshrc ~/.zshrc
"cp" .pablo_names ~/.pablo_names
"cp" vscode_settings.json Library/Application\ Support/Code/User/settings.json


echo "vimrc, zshrc, pablo_names have been reloaded. vscode default json settings updated"
code --install-extension moos-ivp-editor-0.2.0.vsix

echo "Remember to re-source ~/.zshrc"

