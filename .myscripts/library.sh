#!/bin/bash
# Load Library into Shell
#. /Users/Em/.myscripts/library.sh


# VARIABLES

## Make True and False ReadOnly
declare -r TRUE=0
declare -r FALSE=1



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



### STRING THINGS



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


# Convert String to Lowercase
function lowercased() {
    local str="$@"
    local output
    output=$(tr `[A-Z]` `[a-z]`<<<"${str}")
    echo $output
}


# Convert String to Uppercase
function uppercased() {
    local str="$@"
    local output
    output=$(tr`[a-z]` `[A-Z]`<<<"${str}")
    echo $output
}


# Print Like a Typewriter
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



### URL STUFF



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


# Create Data URL from File
function dataurl() {
    local mimeType=$(file -b --mime-type "$1");
    if [[ $mimeType == text/* ]]; then
        mimeType="${mimeType};charset=utf-8";
    fi
    echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')";
}



### FILES AND DIRECTORIES



# Find in Current Directory
alias findhere="find . -name "


# BackUp File
# Usage "backupf filename.txt"
function backupf () {
    cp $1 ${1}-"date +%Y%m%d%H%M".backup;
}


# LS Directories
function lsd () {
    ls -l | grep "^d" | awk '{ print $9 }' | tr -d "/"
}


# CD into Frontmost Finder Window
function cdf() {  # short for cdfinder
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}



### NETWORK STUFF


# Download Website
alias websiteget="wget --random-wait -r -p -e robots=off -U mozilla"

# See Which Apps are using the Network
alias listen="lsof -P -i -n" 

# Find My IP
function myip() {
    local ip=$(curl http://ifconfig.me/ip)
    echo $ip
}


# WebTraffic
function webtraffic () {
    awk "{sum+=$10} END {print sum/1024/1024/1024}" "$(retlog)"
}



### GIT HELPERS



# Git Commit and Push All Changes
function gacp() {
  git add -A
  git commit -am $1
  git push
}


### HARDWARE STATUS



# Print Battery Life
function batterylife() {
  printf ' Battery Life: ' && ioreg -l | grep -i capacity | tr '\n' ' | ' | awk '{ printf("%.2f%%", $10/$5 * 100) }' && echo ""
}



### MATHISH



# Histogram
function histogram () {
        awk ' NF > 0{ counts[$0] = counts[$0] + 1; } END { for (word in counts) print word, counts[word]; }'
}


# Average 
function avg () {
        awk '{ s+=$1 } END {  print 's/NR' }'
}


# Countdown Timer
MIN=1 && for i in $(seq $(($MIN*60)) -1 1); do echo -n "$i, "; sleep 1; done; echo -e "\n\nBOOOM! Time to start."

# Quick Reference All Date Formats

alias dateh='date --help|sed -n "/^ *%%/,/^ *%Z/p"|while read l;do F=${l/% */}; date +%$F:"|'"'"'${F//%n/ }'"'"'|${l#* }";done|sed "s/\ *|\ */|/g" |column -s "|" -t'

