#!/bin/bash

FILE="$HOME/.myscripts/outfiles/tricks.yml"

read -p 'Trick: ' trick

echo "  - $trick" >> $FILE

cat $FILE | tail -3

exit 0
