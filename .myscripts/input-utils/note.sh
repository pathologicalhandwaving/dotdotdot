#!/bin/bash

FILE = $HOME/Repos/Notes/outfiles/notes.yml

read -p 'Note: ' note

echo "note: >" >> $FILE
echo "  $note" >> $FILE

cat | tail -10

exit 0
