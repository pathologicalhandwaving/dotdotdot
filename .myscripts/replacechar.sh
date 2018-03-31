# remove a character in all file names


for i in *; do mv "$i" "$(echo "$i" | tr -d "'")"; done