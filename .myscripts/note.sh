#!/usr/local/bin/bash

FILE=/Users/Em/.myscripts/outfiles/notes.yml

read -p 'Note: ' note

echo "  - $note" >> $FILE

cat | tail -10

exit 0
