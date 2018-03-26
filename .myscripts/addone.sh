#!/bin/bash


FILE="todo.md"
FPATH="/Users/Em/Repos/list/"

echo
echo
echo "💥 🎌 "
echo
echo "Add Completed Task:" | lolcat
echo 
echo " 🎊 🎏 "
read -e thing
echo
echo

apndd="- [X] $thing"
finished="@done($(date +%Y%m%dT%H%M))"
added="@created($(date +%Y%m%dT%H%M))"
echo "$apndd" >> $FPATH$FILE
echo "        $added" >> $FPATH$FILE
echo "        $finished" >> $FPATH$FILE

cd $FPATH
git pull

clear

git add .
git commit -m "updated list after addition of completed task"
git push

clear

git show
read -r -p "Press ENTER to continue" | lolcat


clear

cd

echo
echo
echo
echo
echo
echo

tail -n 3 $FPATH$FILE | lolcat

exit 0
