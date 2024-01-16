#!/bin/bash
#the cat command with a while loop 

while read LINE
do
	echo $LINE
done < $1
