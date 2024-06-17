#!/usr/bin/env bash
R1=80
G1=255
B1=80

R2=0
G2=255
B2=255

R3=$R2
G3=$G3
B3=$B3


R4=80
G4=150
B4=168
bold_cecho() {
    var="R$2"
    R=$(eval echo \$$var)
    var="G$2"
    G=$(eval echo \$$var)
    var="B$2"
    B=$(eval echo \$$var)
    printf "\e[38;2;%s;%s;%sm\e[1m\n$1\e[0m" "$R" "$G" "$B"
}
cecho() {
    var="R$2"
    R=$(eval echo \$$var)
    var="G$2"
    G=$(eval echo \$$var)
    var="B$2"
    B=$(eval echo \$$var)
    printf "\e[38;2;%s;%s;%sm$1" "$R" "$G" "$B"
}



# ---------------------------------------------------
bold_cecho "Reminders of vim shortcuts:\n"  1

cecho "\t- Copy word" 2 
cecho "\t- viwy (or bye)" 3
echo ""
cecho "\t- Paste over word" 2 
cecho "\t- viwp" 3
echo ""
cecho "\t- Undo, redo" 2 
cecho "\t- u, :redo" 3
echo ""
cecho "\t- Move to w,e,$,0 " 2
cecho "\t- next word, end of word, eol, bol" 3
echo ""
cecho "\t- d2w, de, d$ dd" 2
cecho "\t- cut two words, delete upto next word, delete to eol, delete line" 3
echo ""
cecho "\t- p" 2
cecho "\t- Paste (from last deleted with d__)" 3
echo ""
cecho "\t- u, U, CTRL-R" 2
cecho "\t- undo last, restore current line, redo -f | grep ____" 3
echo ""
cecho "\t- x" 2
cecho "\t- Delete character" 3
echo ""
cecho "\t- r_" 2
cecho "\t- Replace character with _" 3
echo ""
cecho "\t- CTRL+V, select lines, SHIFT+I #, ESC,ESC" 2
cecho "\t- Comment out selected lines (visual block mode -> insert mode) " 3
echo ""


printf "\n"
