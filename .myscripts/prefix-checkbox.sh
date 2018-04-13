#!/bin/bash




read -p "Text File: " file

for line in $file do:
    echo "  - [ ] "line >> /Users/Em/Desktop/boxes.txt
done

exit 0
