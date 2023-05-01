#!/usr/bin/env bash
STEP = 40
for R in $(seq 0 40 255); do
	for G in $(seq 0 40 255); do
		for B in $(seq 0 40 255); do
            		printf "\e[38;2;${R};${G};${B}mColor=${R},${G},${B}\e[0m\t";
        	done
	printf "\n";
   	 done
done
