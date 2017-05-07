#!/Users/Em/local/bin/bash

set -e

# Config
FILE="$HOME/.myscripts/outfiles/FlashCards/wellposed.csv"



function main() {
	IFS=$'\t'; read -a q <<<$(gshuf -n 1 "$FILE")
	echo "========================================================"
	echo "Category: ${q[0]}"
	echo " "
	echo "Question: ${q[1]}"
	read -p "Guess: " guess
	echo "Answer: ${q[2]}"
	echo " "
}


while true; do
	main
done
