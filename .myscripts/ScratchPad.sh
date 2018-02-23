#!/bin/bash

FILE=/Users/Em/Repos/ScratchPad/ScratchPad.md
dated=$(date "+%Y-%M-%d")
timed=$(date "+%H:%m")

read -p 'Note: ' note

echo "note: >" >> $FILE
echo "  date: $dated" >> $FILE
echo "  time: $timed" >> $FILE
echo "  $note" >> $FILE

cat $FILE | lolcat

exit 0
