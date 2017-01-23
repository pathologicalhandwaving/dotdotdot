#1/usr/local/bin/bash

date_now=$(date "+%Y-%m-%d")
time_12=$(date -d "-5 hours" "+%I:%M %p %Z")
time_24=$(date -d "-5 hours" "+%H:%M:%S %Z")
time_utc=$(date -u)

function print() {
	echo " "
	echo "Current Date: $date_now"
	echo "Time (12 hour): $time_12"
	echo "Time (24 hour): $time_24"
	echo "UTC: $time_utc"
	echo " "
}

print | lolcat

exit 0
