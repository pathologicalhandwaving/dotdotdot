#!/usr/local/bin/bash

FILE="$HOME/.myscripts/outfiles/glossary.yml"

clear

read -p 'Term: ' term
read -p 'Term Label: ' label
read -p 'Term Description: ' descr
read -p 'Tags: ' tags


echo " "
echo "  label: $label" >> $FILE
echo "    term: $term" >> $FILE
echo "    description: >" >> $FILE
echo "      '$descr'" >> $FILE
echo "    tags: $tags" >> $FILE
echo " "


cat $FILE | tail -5 | lolcat

echo " "

exit 0

