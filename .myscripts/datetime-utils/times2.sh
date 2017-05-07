#!/bin/bash


KDATE=$(date "+%B, %A %Y ")
KTIME=$(date "+%I:%M %p ")
NTIME=$(date -d "-3 hours" "+%I:%M %p ")
NDATE=$(date "+%B, %A %Y ")
UTIME=$(date -u)

function ptimes() {
	echo " "
	echo "Here Date: " $KDATE
	echo "Here Time: " $KTIME
	echo " "
	echo "Nik's Date: " $NDATE
	echo "Nik's Time: " $NTIME
	echo " "
	echo "UTC Time: " $UTIME
	echo " "
}


clear

ptimes | boxes -d mouse | lolcat -a -d 3 -F 0.2

exit 0
