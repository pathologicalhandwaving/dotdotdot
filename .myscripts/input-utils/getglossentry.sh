#!/bin/bash

FILE="$HOME/.myscripts/outfiles/glossary.yml"

clear

read -p 'Term: ' term
read -p 'Term Label: ' label
read -p 'Term Description: ' descr
read -p 'Tags: ' tags

fmtgls="\\newglossaryentry{$label}{%\n\t'name={$term},'\n\t'description={$desc},'\n}"

echo " "
echo "$fmtgls"
echo " "


cat $FILE | tail -5 | lolcat

echo " "

exit 0

