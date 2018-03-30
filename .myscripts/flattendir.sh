# Flatten a directory tree

find /Users/Em/Documents/Files -mkndepth 2 -type f -exec mv -i -n '{}' /Users/Em/Documents/Exported ';'


