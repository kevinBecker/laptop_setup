#!/usr/bin/env bash
STEP = 40
for i in $(seq 0 1 255); do
	echo $(tput setaf $i) "$i "
done
