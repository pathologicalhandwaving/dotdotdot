#!/usr/local/bin/bash

FILE=/Users/Em/.myscripts/outfiles/ideas.yml

read -p 'Idea: ' idea

echo "  - $idea" >> $FILE

exit 0

