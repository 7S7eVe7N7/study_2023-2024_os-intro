#!/bin/bash
for A in *
do
    if test -d "$A"
    then
	echo "$A: is a directory"
    else
	echo -n "$A: is a file and "
	if test -r $A
	then
	    echo "it's readable"
	    if test -w $A
	    then
		echo "it's writable"
        else
	    echo "it isn't readable and writable"
	    fi
	fi
    fi
done

       
		
