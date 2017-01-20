#!/bin/bash

FILE="$HOME/School/Classes/MIT6001x/Notes/gloss.yml"

clear

read -p 'Term: ' term
read -p 'Term Label: ' label
read -p 'Term Description: ' descr

#echo " "
#echo "Term Entered: " $term
#echo "Term Label Entered: " $label
#echo "Term Description Entered: " $descr
#echo " "
echo " "
echo "label: $label" >> $FILE
echo "subvalue:" >> $FILE
echo "    term: $term" >> $FILE
echo "    description: |" >> $FILE
echo "        $descr" >> $FILE
echo " "

#echo "term: $term" >> $FILE
#echo "label: $label" >> $FILE
#echo "description: $descr" >> $FILE
#echo " " >> $FILE
#echo " "

cat $FILE

echo " "

exit 0

