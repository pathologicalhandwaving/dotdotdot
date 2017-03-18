#!/usr/local/bin/bash

FILE=

clear

read -p 'Title: ' title
read -p 'Author: ' author
read -p 'Year: ' year
read -p 'Tags: ' tags


echo " "
echo "title = $title" >> $FILE
echo "author = $author" >> $FILE
echo "tags = $tags" >> $FILE
echo "year = $year" >> $FILE
echo " "


cat $FILE | tail -5 | lolcat

echo " "

exit 0

