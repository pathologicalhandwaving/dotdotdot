#!/bin/bash


### ANSI COLORING

# Print Red
function red {
    echo -e "\e[0;31m"$@"\e[0m"
}

# Print Bold Red
function bred {
    echo -e "\e[1;31m"$@"\e[1;31m"
}

# Print Yellow
function yellow {
    echo -e "\e[0;33m"$@"\e[0m"
}

# Print Bold Yellow
function byellow {
    echo -e "\e[1;33m"$@"e[1;33m"
}

# Print Green
function green {
    echo -e "\e[0;32m"$@"\e[0m"
}

# Print Bold Green
function bgreen {
    echo -e "\e[1;32m"$@"\e[1;32m"
}

# Print Blue
function blue {
    echo -e "\e[0;34m"$@"\e[0;34m"
}

# Print Bold Blue
function bblue {
    echo -e "\e[1;34m"$@"\e[1;34m"
}

# Print White
function white {
    echo -e "\e[0;37m"$@"\e[0;37m"
}

### Color Code Strings

# Throw Error
function error() {
    printf "${bred}Error:${white} ${1}\n"
    exit
}

# Throw Warning
function warn() {
    printf "${byellow}${1}${white}\n"
    exit
}

# Throw Success
function success() {
    printf "${bgreen}${1}${bblue}\n"
}

# Escape Characters in String
funtion escape() {
  printf "%q " $1
}

# URL Encode String
function urlenc() {
    local string="${1}"
    local strlen=${#string}
    local encoded=""

    for (( pos=0 ; pos<strlen ; pos++ )); do
        c=${string:$pos:1}
        case "$c" in
            [-_.~a-zA-Z0-9] ) o="${c}" ;;
            * )               printf -v o '%%%02x' "'$c"
        esac
        encoded+="${o}"
    done
    
    echo "${encoded}"
}

# Print a Message typewriter
function typewrite() {
    MESSAGE_TYPE="$1"
    MESSAGE="$2"

    case $MESSAGE_TYPE in
        'success' )
            printf "${green}"
            ;;
        'warn' )
            printf "${yellow}"
            ;;
        'error' )
            printf "${red}"
            ;;
        'normal' )
            ;;
        * )
            error "Error: Message type \"$MESSAGE_TYPE\" doesn't exist."
            exit
            ;;
    esac

    SPOT=0
    while true; do
        printf "${MESSAGE:SPOT:1}"
        SPOT=$(($SPOT+1))

        # Generate a random decimal
        DELAY_INT=$(( ( RANDOM % 10 ) + 1 ))
        sleep "0.0$DELAY_INT"

        if [ ${#MESSAGE} -eq "$SPOT" ]; then
            printf "${white}"
            printf "\n"
            break
        fi
    done
}


### More Stuff

# Histogram
function histogram () {
        awk ' NF > 0{ counts[$0] = counts[$0] + 1; } END { for (word in counts) print word, counts[word]; }'
}

# Average 
function avg () {
        awk '{ s+=$1 } END {  print 's/NR' }'
}

# Find My IP
function myip() {
    local ip=$(curl http://ifconfig.me/ip)
    echo $ip
}

# BackUp File
# Usage "backupf filename.txt"
function backupf () {
    cp $1 ${1}-`date +%Y%m%d%H%M`.backup;
}


# LS Directories
function dls () {
    ls -l | grep "^d" | awk '{ print $9 }' | tr -d "/"
}

# WebTraffic
function webtraffic () {
    awk "{sum+=$10} END {print sum/1024/1024/1024}" "$(retlog)"
}


# Git Commit and Push All Changes
function gacp() {
  git add -A
  git commit -am $1
  git push
}




