#!/bin/bash

FILE=/Users/Em/.myscripts/outfiles/quotes.yml

read -p 'Quote: ' quote
read -p 'Author: ' author

echo "  $author:" >> $FILE
echo "    - $quote" >> $FILE

cat $FILE | tail -5

exit 0

