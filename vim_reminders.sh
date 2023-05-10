#!/usr/bin/env bash

R=80
G=255
B=80

R2=0
G2=255
B2=255

R3=$R2
G3=$G3
B3=$B3

# ---------------------------------------------------
printf "\e[38;2;%s;%s;%sm\e[1m\nFriendly reminders of vim shortcuts (from vimtutor):\n\e[0m" "$R" "$G" "$B"
# ---------------------------------------------------

printf "\e[38;2;%s;%s;%sm\t- Move to w,e,$,0" "$R2" "$G2" "$B2"
printf "\e[38;2;%s;%s;%sm\e[2m next word, end of word, eol, bol)\n\e[0m" "$R3" "$G3" "$B3"

printf "\e[38;2;%s;%s;%sm\t- d2w, de, d$ dd" "$R2" "$G2" "$B2"
printf "\e[38;2;%s;%s;%sm\e[2m cut two words, delete upto next word, delete to eol, delete line\n\e[0m" "$R3" "$G3" "$B3"

printf "\e[38;2;%s;%s;%sm\t- p" "$R2" "$G2" "$B2"
printf "\e[38;2;%s;%s;%sm\e[2m Paste (from last deleted with d__)\n\e[0m" "$R3" "$G3" "$B3"

printf "\e[38;2;%s;%s;%sm\t- u, U, CTRL-R\e[0m" "$R2" "$G2" "$B2"
printf "\e[38;2;%s;%s;%sm\e[2m undo last, restore current line, redo -f | grep ____\n\e[0m" "$R3" "$G3" "$B3"

printf "\e[38;2;%s;%s;%sm\t- x\e[0m" "$R2" "$G2" "$B2"
printf "\e[38;2;%s;%s;%sm\e[2m Delete character\n\e[0m" "$R3" "$G3" "$B3"

printf "\e[38;2;%s;%s;%sm\t- r_\e[0m" "$R2" "$G2" "$B2"
printf "\e[38;2;%s;%s;%sm\e[2m replace character with _ \n\e[0m" "$R3" "$G3" "$B3"



printf "\n"
