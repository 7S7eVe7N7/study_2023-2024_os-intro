#!/bin/bash

while getopts i:o:p:cn optletter
do
    case $optletter in
	i) i_flag=1; i_val=$OPTARG;;
	o) o_flag=1; o_val=$OPTARG;;
	p) p_flag=1; p_val=$OPTARG;;
	c) c_flag=1;;
	n) n_flag=1;;
	*) echo No such option as $optletter;;
    esac
done

if ! test $c_flag
then
    cf=-i
fi

if test $n_flag
then
    nf=-n
fi

grep $cf $nf $p_val $i_val >> $o_val
