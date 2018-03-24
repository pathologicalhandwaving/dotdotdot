#!/bin/bash


timestamp="date +%Y%m%dT%H%M"

FILE="Users/Em/Repos/tasks/20728d49baac67ae2f557153e7396627/todo.md"

read -p "Add Task: " thing

function adme() {
    $thing
    prefixer="- [ ] "
    apndd="$prefixer$thing @created($timestamp)"
    echo = "$($apndd)" >> $FILE
    clear
    tail -n 2 < $FILE
}

exit 0