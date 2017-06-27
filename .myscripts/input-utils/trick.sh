#!/bin/bash

FILE="/Users/Em/Repos/Notes/outfiles/tricks.yml"

read -p 'Trick: ' trick

echo "trick: >" >> $FILE
echo "  $trick" >> $FILE

cat $FILE | tail -5

exit 0
