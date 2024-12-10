#!/usr/bin/env bash

backgroundArray=($(ls ~/.config/backgrounds))

arraySize=${#backgroundArray[@]}

randNum=$(($RANDOM % $arraySize))
randomBackground=${backgroundArray[$randNum]}

# take this and source it i3 configuration
echo $randomBackground

MONITOR=$m feh --bg-scale ~/.config/backgrounds/$randomBackground 
