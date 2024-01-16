#!/bin/bash
# a script to read lines of a file
while read LINE
do
	echo $LINE
done < $1
