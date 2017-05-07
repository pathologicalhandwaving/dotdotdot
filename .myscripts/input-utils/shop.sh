#!/bin/bash

FILE=/Users/Em/.myscripts/outfiles/shop.yml

read -p 'Item: ' item

echo "  - $item" >> $FILE

cat $FILE | tail -10

exit 0
