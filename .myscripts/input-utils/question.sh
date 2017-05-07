#!/bin/bash

FILE = /Users/Em/.myscripts/outfiles/questions.yml

read -p 'Question: ' question

echo "  - $question" >> $FILE

exit 0
