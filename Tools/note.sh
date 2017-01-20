#!/usr/local/bin/bash

FILE=/Users/Em/Tools/notes.yml

read -p 'Note: ' note

echo "  - $note" >> $FILE

cat | tail -10

exit 0
