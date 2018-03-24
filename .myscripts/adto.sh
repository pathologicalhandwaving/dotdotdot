#!/bin/bash


FILE="/Users/Em/Repos/list/todo.md"

read -p "Add Task: " thing

apndd="- [ ] $thing @created($(date +%Y%m%dT%H%M))"
echo "$apndd" >> $FILE
clear
tail -n 1 $FILE

exit 0
