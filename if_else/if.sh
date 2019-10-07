#!/bin/bash

#read -p "Input a DIR:" DIR
DIR=".."
if [ -d $DIR ];then
	echo $DIR is a DIR.
else
	echo $DIR is not a DIR.
fi
exit 0

read -p "Input a num:" cnt

#if [ $cnt -gt 1 ]; then	# both ok.
if [ $cnt -gt 3 ]
then
	echo "cnt > 3."
else
	echo "cnt <= 3."
fi
