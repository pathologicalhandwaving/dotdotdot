#!/bin/bash
# author: K. M. Short
# email: kmshort@protonmail.com
# date: 2018-03-16
# description: >
#   Bash utils menu
# usage: 


# FUCTIONS

## CHEATSHEET VIEWER
function cheatview() {

}

## APPS BY USE CASE
function useapps() {

}

## TOOLS BY USE CASE
function usetools() {

}


## BOOKMARKS
function markers() {
    echo " "
    figlet Marks
    echo " "
    # Buku
}

## READING LISTS
function reading() {
    # Reading List
    # Reference PDFs
    # bib
}

## SCRATCH
function scratches() {
    # scratchpad
    # lists
    # notes
}

function dostuff() {
    # python script
    # logger
    # time
    # bash history
    # taskly
}

## MAIL
function mailed() {
    # mutt
    # signal
    # messages
    # contacts
}

## INBOX
function boxer() {

}

## PROJECTS
function pjs() {
    # current math
    # current cs
    # current crypto
    # current data
    # repos
    # archive
}

## WORKSPACES
function iminspace() {
    # by project
    # by task
    # by layout
    # launcher
    # config
}

## FREELANCE
function omgwtf() {
    # clients
    # boards
    # portfolio
    # website
    # professional development
    # resume cv
    # skills
}

## LEDGER
function bbqnvmd() {
    # income
    # tutoring
    # savings
    # budget
}


# MAIN MENU HEADER
function mainhdr() {
    echo "MAIN MENU"
    afplayer portalbot.wav
}

# MENU
function menu() {
	echo " "
	figlet -f roman ScriptsMenu
	echo " "
	echo " 0: Cheatsheets "
	echo " 1: Apps "
	echo " 2: Tools "
	echo " "
	echo " 3: Bookmarks "
	echo " 4: Reading "
	echo " 5: Scratch "
	echo " "
	echo " 6: Tasks "
	echo " 7: Mail "
	echo " 8: Inbox "
	echo " "
	echo " 9: Projects "
	echo "10: Workspaces "
	echo " "
	echo "11: Freelance "
	echo "12: Ledger "
	echo " "
	echo " Q: QUIT "
	echo " "
}


# READ MENU
function readmenu() {
    case $answer in
        0) thing ;;
        1) thing ;;
        2) thing ;;
        3) thing ;;
        4) thing ;;
        5) thing ;;
        6) thing ;;
        7) thing ;;
        8) thing ;;
        9) thing ;;
        10) thing ;;
        11) thing ;;
        12) thing ;;
	  q|Q) exit 0 ;;
    esac
        read -p 'The only winning move is not to play. ' answer
}

# PRINT MAIN MENU HEADER
mainhdr | boxes -d mouse | lolcat -a -d 3 -F 0.2

# READ INPUT
while true
do
	trap '' 2
	trap 'echo "Control-C? Really? I definitely said type Q"' 2
	menu | lolcat
	readmenu
done
