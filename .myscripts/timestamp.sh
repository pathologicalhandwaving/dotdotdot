#!/usr/bin/bash

date_now=$(date "+%Y-%m-%d")
time_12=$(date -d "-5 hours" "+%I:%M %p %Z")
time_24=$(date -d "-5 hours" "+%H:%M:%S %Z")
time_utc=$(date -u)
timestamp=$(date "+%YYYY%MM%ddT%HH%mm%ss%z")

function print() {
	echo " "
	echo "Current Date: $date_now"
	echo "Time (12 hour): $time_12"
	echo "Time (24 hour): $time_24"
	echo "UTC: $time_utc"
	echo "Timestamp: $timestamp"
	echo " "
}

function copy() {
	cat $timestamp > pbcopy
	echo "Timestamp has been copied to the clipbpard"
}


print | lolcat
copy

exit 0
