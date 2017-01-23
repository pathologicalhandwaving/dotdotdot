#!/bin/bash


KDATE=$(date "+%B, %A %Y ")
KTIME=$(date "+%I:%M %p ")
NTIME=$(date -d "-3 hours" "+%I:%M %p ")
UTIME=$(date -u)

function ptimes() {
	echo " "
	echo "Date: " $KDATE
	echo "Time: " $KTIME
	echo " "
	echo "Nik's Time: " $NTIME
	echo " "
	echo "UTC Time: " $UTIME
	echo " "
}


clear

ptimes | boxes -d nuke | lolcat -a -d 3 -F 0.2

exit 0
