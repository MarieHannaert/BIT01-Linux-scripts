#!/bin/bash
#a simple counter

COUNTER=0

while [ $COUNTER -lt 100 ]
do
	echo counter equals $COUNTER
	COUNTER=$((COUNTER+1))

done
