#!/usr/local/bin/bash

FILE=/Users/Em/.myscripts/outfiles/conf-todo.yml

read -p 'Config TODO: ' todo

echo "  - $todo" >> $FILE

cat | tail -10

exit 0
