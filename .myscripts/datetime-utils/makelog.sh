#!/bin/bash

TEMPLATE="/Users/Em/Repos/ResearchDiary/TXT-Templates/Day.txt"
day=$(date "+%Y%m%d")
cp $TEMPLATE /Users/Em/Repos/ResearchDiary/Entries/$day.txt

exit 0
