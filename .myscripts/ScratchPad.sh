#!/bin/bash

FILE=/Users/Em/Repos/ScratchPad/ScratchPad.md
dated=$(date "+Y-%m-%d")
timed=$(date -d "+%HH:%mm:%ss%Z")

read -p 'Note: ' note

echo "note: >" >> $FILE
echo "  date: $dated" >> $FILE
echo "  time: $timed" >> $FILE
echo "  $note" >> $FILE

cat $FILE | lolcat

exit 0
