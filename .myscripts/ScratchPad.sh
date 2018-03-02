#!/bin/bash

FILE=/Users/Em/Repos/ScratchPad/ScratchPad.yaml
dated=$(date "+%Y-%m-%d")
timed=$(date "+%H:%M")

read -p 'Note: ' note

echo "scratch:" >> $FILE
echo "  date: $dated" >> $FILE
echo "  time: $timed" >> $FILE
echo "  note: > " >> $$FILE
echo "    $note" >> $FILE
echo " "

cat $FILE | lolcat

exit 0
