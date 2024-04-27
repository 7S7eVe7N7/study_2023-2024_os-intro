#!/bin/bash
echo "Write the file extension: "
read extension
echo "Write the directory: "
read directory
count=$(find "$directory" -name "*.$extension" -type f | wc -l)
echo "There are $count $extension files in the directory '$directory'."
