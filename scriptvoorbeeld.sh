#!/bin/bash
#The script tests the number of arguments and returns an error message if the number of
#command-line arguments is less than or equal to one.
#If the number of command-line arguments is greater than one,
#the script will use pattern-matching to remove the value of the first command-line argument
#from the PATH variable (without actually saving the adjusted PATH variable, only printing it).
#Afterwards, the script prints the value of the adjusted PATH variable,
#followed by the value of the second command-line argument in the terminal.
NoArg=$#
	echo "The number of arguments is $NoArg"
if [ $NoArg -le 1 ]
then
	echo "The number of arguments should be more than one"
elif [ $NoArg -gt 1 ]
then
	PATH=$*
	echo "The non adjusted PATH variable is: $PATH"
	echo "The new PATH variable is: ${PATH#* }"
fi
