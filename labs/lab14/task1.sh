#!/bin/bash

lockfile="./task1.file"
exec {fn}>lockfile

while test -f "$lockfile"
do
    if flock -n ${fn}
    then
	echo "File is blocked"
	sleep 5
	echo "File is unlocked"
	flock -u ${fn}
    else
	echo "File is blocked"
	sleep 5
    fi
done
