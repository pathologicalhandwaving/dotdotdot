#!/bin/bash


FILE="logbook.org"
FPATH="/Users/Em/Repos/tasks/Logger"

echo
echo
echo
echo "Add Logbook Entry:" | lolcat
read -e thing
echo
echo 
echo


log="  - LOG: [[$(date +%Y%m%dT%H%M)]]  $thing"

echo "log" >> $FPATH$FILE


cd $FPATH
git pull

clear

git add .
git commit -m "updated logbook"
git push

clear

cd

echo
echo
echo


tail -n 1 $FPATH$FILE | lolcat

read -r -p "Press ENTER to continue" | lolcat

echo "Logbook Updated"
sleep 1s
clear

exit 0