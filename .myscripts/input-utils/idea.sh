#!/bin/bash

FILE=/Users/Em/Repos/Notes/outfiles/ideas.yml

read -p 'Idea: ' idea

echo "idea: >" >> $FILE
echo "  $idea" >> $FILE

cat $FILE | tail -5
exit 0

