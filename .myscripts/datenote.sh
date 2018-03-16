#!/bin/bash
FPATH="/Users/Em/ScratchPad"
# DateNote

today="$( date +"%Y%m%d" )"
ntime="$( date +"%H%M%S" )"



fname="$today$ntime.md"
cd "$FPATH"
touch "$fname"
vim "$fname"