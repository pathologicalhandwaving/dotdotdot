#!/bin/bash

read -p 'what:' thing 


echo "format 1: $thing"
echo "This format Does not work: "
echo "format 2: \$(thing)"
echo "This format doesn't work either: "
echo "format 3: \$(\$thing)"

exit 0
