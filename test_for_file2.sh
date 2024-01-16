#!/bin/bash
#test for a file
#filename is provided as a first argument on the commandline

if  -f ${1:? "You forgot a file name"}

then
	echo $1 is a file 
else
	echo $1 is not a file
fi

