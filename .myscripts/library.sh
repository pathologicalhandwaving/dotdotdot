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
function escape() {
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

# Get local and WAP IP address info
lips() {
    local interface ip
    for interface in $(networksetup -listallhardwareports | awk '/^Device: /{print $2}'); do
        ip=$(ipconfig getifaddr $interface)
        "$ip" != "" ] && break
    done

    local locip extip

    [ "$ip" != "" ] && locip=$ip || locip="inactive"

    ip=`dig +short myip.opendns.com @resolver1.opendns.com`
    [ "$ip" != "" ] && extip=$ip || extip="inactive"

    printf '%11s: %s\n%11s: %s\n' "Local IP" $locip "External IP" $extip
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



# Quick Reference All Date Formats
alias dateref='date --help|sed -n "/^ *%%/,/^ *%Z/p"|while read l;do F=${l/% */}; date +%$F:"|'"'"'${F//%n/ }'"'"'|${l#* }";done|sed "s/\ *|\ */|/g" |column -s "|" -t'

# Open argument in Dash
function dash() {
    open "dash://$*"
}

# Open man page in Dash
function dman() {
    open "dash://man:$*"
}


# ttyclock
alias clock="tty-clock -c -b -B -n  -C 5 -t"

# Stopwatch
alias stopwatch='echo "Time Started. CTRL-D to Stop" && date && time cat && date'

# commandlinefu
alias fu="python /Users/Em/Toolz/fu/fu"

# Safari
alias nosaf="sudo chmod ogu-rx /Applications/Safari.app"
alias yesaf="sudo chmod ogu+rx /Applications/Safari.app"

# archive.org
alias ia="bash /Users/Em/.dict/ia"

# Output a markdown list from stdin to stdout
function qlist() {
    sed -E '/^[    ]*$/d'|sed -E 's/^([    ]*)/\1* /'
}
# list to clipboard
alias qlistpb="qlist|pbcopy"


# Weather
function weather() {
    curl wttr.in/Lake\ City,\ FL | lolcat -a -d 3 -s 17.0
}

function moon() {
    curl wttr.in/Moon | lolcat -a -d 5 -s 17.0
}


# mkdir and cd into it
function mkcd() {
    mkdir -p $1 && cd $1; 
}

# Encode
function encode() {
    echo -n $@ | perl -pe's/([^-_.~A-Za-z0-9])/sprintf("%%%02X", ord($1))/seg';
}


# Look Busy ;)
function busy() {
    j=0;while true; do let j=$j+1; for i in $(seq 0 20 100); do echo $i;sleep 1; done | dialog --gauge "Install part $j : `sed $(perl -e "print int rand(99999)")"q;d" /usr/share/dict/words`" 6 40;done
}
alias busy="busy"


# Count number of files in directory 
function numfiles() { 
    N="$(ls $1 | wc -l)"; 
    echo "$N files in $1";
}

# New Scratch File
function scratch() {
    cd /Users/Em/Repos/ScratchPad/
    touch $1
    vim $1
}
