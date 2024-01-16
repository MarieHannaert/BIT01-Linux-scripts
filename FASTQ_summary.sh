#!/bin/bash 
#write the sequence from a fastq file to an output file

echo -n "Give the name of a FastQ file: "
read FASTQ
echo -n "Give the name of an output file: "
read OUTPUT
> $OUTPUT

COUNTER=1

while read LINE
do
	if [ $COUNTER -eq 2 ]
	then
		echo $LINE >> $OUTPUT
	elif [ $COUNTER -eq 4 ]
	then
		COUNTER=0
	fi
	COUNTER=$((COUNTER+1))
done < $FASTQ
