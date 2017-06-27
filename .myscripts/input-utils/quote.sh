#!/bin/bash

FILE=/Users/Em/Repos/Notes/outfiles/quotes.yml

read -p 'Quote: ' quote
read -p 'Author: ' author

echo "author: $author" >> $FILE
echo "  quote: >" >> $FILE
echo "    $quote" >> $FILE

cat $FILE | tail -15

exit 0

