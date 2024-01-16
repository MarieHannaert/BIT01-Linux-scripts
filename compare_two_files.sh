#!/bin/bash
#Write a shell script that compares the content of two files containing accession numbers
#you need two  arguments, those are files. provided on the command line
#$1=file 1 $2=file2

#create a counter 
COUNTER=0

#loop over the accesion number of the first file
while read ACC1
do
	#loop over the accesion numbers of the second file
	while read ACC2
	do
		#compare both accesion numbers
		if [ $ACC1 = $ACC2 ]
		then
			#print the identical accesion numbers
			echo $ACC1
			COUNTER=$((COUNTER+1))
		fi
	done < $2
done < $1

echo the line of duplicate accession numbers is $COUNTER
