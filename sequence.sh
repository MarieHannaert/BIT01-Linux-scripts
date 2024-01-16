#!/bin/bash
#ask for two sequences and this script will compare two sequences and if they are the same it will return TRUE
# this script needs two sequences as arguments 

echo -n "Enter the first sequence" 
read SEQ1
echo -n "Enter the second sequence"
read SEQ2

if [ $SEQ1 = $SEQ2 ]

then  
echo True 

else 
echo False 
fi
echo bye
