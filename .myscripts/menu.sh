#!/usr/local/bin/bash

function idea() {
	sh ./Users/Em/.myscripts/idea.sh
}

function gloss() {
	sh ./Users/Em/.myscripts/getglossentry.sh
}

function note() {
	sh ./Users/Em/.myscripts/note.sh
}

function question() {
	sh ./Users/Em/.myscripts/question.sh
}

function trick() {
	sh ./Users/Em/.myscripts/trick.sh
}

function tool() {
	sh ./Users/Em/.myscripts/tool.sh
}

function times() {
	sh ./Users/Em/.myscripts/ourtimes.sh
}

function cheat() {
	mdless -w 104 /Users/Em/.myscripts/outfiles/ttcheat.md
}

function marquee() {
	figlet -f roman ScriptsMenu
}


function menu() {
	echo " "
	figlet -f roman ScriptsMenu
	echo " "
	echo "1: Idea "
	echo "2: Gloss Entry "
	echo "3: Note "
	echo "4: Question "
	echo "5: Trick "
	echo "6: Tool "
	echo "7: Time "
	echo "8: CheatSheet "
	echo " "
	echo "Q: QUIT "
	echo " "
}

function readmenu() {
	case $answer in
		1) idea ;;
		2) gloss ;;
		3) note ;;
		4) question ;;
		5) trick ;;
		6) tool ;;
		7) times ;;
		8) cheat ;;
		q|Q) exit 0 ;;
	esac
		read -p 'Pick a card, any card...' answer
}

marquee | boxes -d mouse | lolcat -a -d 3 -F 0.2
while true
do
	trap '' 2
	trap 'echo "Control-C is disabled"' 2
	menu | lolcat
	readmenu
done

