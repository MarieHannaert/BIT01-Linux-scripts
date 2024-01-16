#!/bin/bash
#using && en || to test for file 

test -e $1 && (test -f $1 || echo "I don't know what \"$1\" is")

