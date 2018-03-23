#!/bin/bash

local=desc

git pull
git add .
read -p "Commit: " desc
git commit -m "$desc"
git push

echo "$(git changes)"

exit 0