#!/bin/bash 
#translate the day of the weet to dutch 

DAY=$(date +%A)

echo -n "vandaag is het "

case $DAY in 
	Monday)
	echo maandag
	;;
	Tuesday)
	echo dinsdag
	;;
	Wednesday)
	echo woensdag
	;;
	Thursday)
	echo donderdag
	;;
	Friday)
	echo vrijdag 
	;;
	Saturday)
	echo zaterdag
	;;
	Sunday)
	echo zondag
	;;
esac
