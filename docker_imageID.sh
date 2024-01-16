#!/bin/bash
#add the name of a docker image as a first argument on the command line
#the script will return the image ID of the docker image 

echo Provide the name of a docker image
read IMAGENAME

IMAGEID=$(docker images | grep $IMAGENAME |awk '{print $3}')
echo "The image identifier of $IMAGENAME is $(docker images | grep $1 | awk '{print $3}')"
echo bye
