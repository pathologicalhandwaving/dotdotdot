#!/bin/bash

FILE="/Users/Em/Repos/tasks/20728d49baac67ae2f557153e7396627/todo.md"

cd /Users/Em/Repos/tasks/20728d49baac67ae2f557153e7396627/
git pull
git add .
git commit -m "Updated todo list"
git push
git show

exit 0
