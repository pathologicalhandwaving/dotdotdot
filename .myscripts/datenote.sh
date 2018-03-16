#!/bin/bash
# DateNote

FPATH="/Users/Em/Repos/ScratchPad"

TODAY="$( date +"%Y%m%d" )"
NTIME="$( date +"%H%M%S" )"



FNAME="$TODAY-$NTIME"
FNPTH="$FPATH/$FNAME.md"
touch $FNPTH

echo "---" >> $FNPTH
echo "title: Scratchpad: $FNAME" >> $FNPTH
echo "date: $TODAY" >> $FNPTH
echo "tags: scratchpad, $TODAY, " >> $FNPTH
echo "---" >> $FNPTH
echo "" >> $FNPTH
echo -en '\u0023' >> $FNPTH
echo " ScratchPad: $FNAME" >> $FNPTH
echo "" >> $FNPTH
echo "***" >> $FNPTH
echo "" >> $FNPTH
echo "" >> $FNPTH

vim $FNPTH
