#!/usr/local/bin/bash

FILE=$HOME/.myscripts/outfiles/tools.yml

echo " "
read -p 'Tool Name: ' tool
read -p 'Description: ' desc
read -p 'Example Usage: ' uses
echo " "

echo "  tool: $tool" >> $FILE
echo "    description: >" >> $FILE
echo "      '$desc'" >> $FILE
echo "    example: |" >> $FILE
echo "      $uses" >> $FILE

cat $FILE | tail -5

exit 0

