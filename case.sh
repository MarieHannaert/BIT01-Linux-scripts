#!/bin/bash
#testing multiple variables at the same time 

echo how are you? 
read ASWER

case $ASWER in 
	*good|*file)
	echo nice to hear
	;;
	ok)
	echo you can do better
	;;
	*)
	echo try again
	;;
esac

