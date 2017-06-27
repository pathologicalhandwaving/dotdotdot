#!/bin/bash

FILE = /Users/Em/Repos/Notes/outfiles/questions.yml

read -p 'Question: ' question

echo "question: >" >> $FILE
echo "  $question" >> $FILE

cat $FILE | tail -5

exit 0
