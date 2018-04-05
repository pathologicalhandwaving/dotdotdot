#!/bin/bash

local=desc

git pull
git add .
read -p "Commit: " desc
git commit -m "$desc"
git push


exit 0
