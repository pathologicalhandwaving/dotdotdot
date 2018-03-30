# Replace spaces with _ for all file names in directory

for f in *\ *; do mv "$f" "${f// /_}"; done