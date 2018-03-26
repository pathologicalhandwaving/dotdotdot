#!/bin/bash


FILE="todo.md"
FPATH="/Users/Em/Repos/list/"

echo
echo
echo
echo "🐙  Add Task: 🐙 "  | lolcat
echo
read -e thing
echo
echo
apndd="- [ ] $thing"
added="@created($(date +%Y%m%dT%H%M))"
echo "$apndd" >> $FPATH$FILE
echo "        $added" >> $FPATH$FILE

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

echo
echo
echo
echo
echo
echo "⚡️  "
echo "⚡️ "
tail -n 2 $FPATH$FILE | lolcat
echo "⚡️ "
echo "⚡️ "
exit 0
