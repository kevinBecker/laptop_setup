#!/usr/bin/env bash
R1=80
G1=255
B1=80

R2=0
G2=255
B2=255

R3=$R2
G3=0
B3=0

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
bold_cecho "Reminders of tools/aliases I've installed:\n"  1

cecho "\t- vr " 2
cecho "\t- vim reminders" 3
echo ""
cecho "\t- shellcheck " 2
cecho "\t- on shell scripts" 3
echo ""
cecho "\t- mmcluster.sh" 2
cecho "\t- ssh into each pi in the monte-moos cluster" 3
echo ""
cecho "\t- newscript " 2
cecho "\t scriptname" 4
cecho "\t- generates a new script" 3
echo ""
cecho "\t- pyflakes " 2
cecho "\t- on python script debugging" 3
echo ""
cecho "\t- tg " 2
cecho "\t- alias for tree -f | grep ____" 3
echo ""
cecho "\t- hg " 2
cecho "\t- alias for history | grep ____" 3
echo ""
cecho "\t- rb " 2
cecho "\t- recursive build (goes back, finds build.sh, runs -j8)" 3


printf "\n"
