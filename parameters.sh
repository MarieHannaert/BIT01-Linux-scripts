#!/bin/bash
#this script will test the number of parameters

NUMBERARG=$#
FIRSTVALUE=$1

if [ $NUMBERARG -gt 1 ]
then
	echo " $NUMBERARG arguments were added"
elif [ $NUMBERARG -lt 2 ]
then
	echo "'$FIRSTVALUE' is the value of the first parameter"
fi
