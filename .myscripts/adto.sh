#!/bin/bash


FILE="todo.md"
FPATH="/Users/Em/Repos/list/"

read -p "Add Task: " thing

apndd="- [ ] $thing"
added="@created($(date +%Y%m%dT%H%M))"
echo "$apndd" >> $FPATH$FILE
echo "$added" >> $FPATH$FILE

cd $FPATH
git pull
clear
git add .
git commit -m "updated list after addition"
git push
clear

git show
read -r -p "Press ENTER to continue"
clear
cd
echo " "
echo " "
echo " "
grc tail -n 2 $FPATH$FILE

exit 0
