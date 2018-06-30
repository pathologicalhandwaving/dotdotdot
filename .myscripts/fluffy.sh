#!/bin/bash

function fluffy() {
    cd /Volumes/Users/JumpShip/Library/Scraped
    read -p "URL: " url
    read -p "Author: " author
    echo "$author"
    read -p "Year: " year
    local file="$author$year.org"
    touch $file.org
    curl -s "$url" | unfluff | jq -r .text > $file
    head -10 $file
}
