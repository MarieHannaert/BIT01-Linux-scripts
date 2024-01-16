#!/bin/bash
#test for a file
#filename is provided as a first argument on the commandline

FILENAME=${1:?"you forgot the filename!"}
if  -f $FILENAME

then
	echo $1 is a file
else
	echo $1 is not a file
fi

