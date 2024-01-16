#!/bin/bash

#provide a filename as an argument
#this script will search for the file, retain the absolute path to the file 
#and run the name of the directorie containing the file 

dirname $(find / -name $1 2> /dev/null) > /var/tmp/locations

while read LINE
do 
	echo the directory of $1 is ${LINE##/*/}
done < /var/tmp/locations

rm /var/tmp/locations
