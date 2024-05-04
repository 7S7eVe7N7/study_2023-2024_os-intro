#!/bin/bash

gcc -o cprog task2.cpp
./cprog

case $? in
     0) echo "The number equals 0.";;
     1) echo "The number is more than 0.";;
     2) echo "The number less than 0.";;
esac
