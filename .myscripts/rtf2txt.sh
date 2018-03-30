# Convert all rtf in dir and convert to txt


find . -name \*.rtf -print0 | xargs -0 textutil -convert txt