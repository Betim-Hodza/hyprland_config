#!/bin/bash
# Envycontrol switches gpu modes
#

# check which mode we are in
# we will only toggle between integrated and hybrid graphics (dedicated will for sure kill ur battery)
if [[ $(envycontrol -q) == "integrated" ]]; then
	sudo envycontrol -s hybrid

elif [[ $(envycontrol -q) == "hybrid" ]]; then
	sudo envycontrol -s integrated
fi
