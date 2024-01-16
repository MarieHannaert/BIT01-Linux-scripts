#!/bin/bash
#test for a file 
#filename is provided as a first argument on the commandline

if test -f $1 
then 
	echo $1 is a file 
else
	echo $1 is not a file
fi
