#!/bin/bash
#a simple counter

COUNTER=1

while true 
do
	echo counter equals $COUNTER
	COUNTER=$((COUNTER+1))

done
