#!/bin/bash

FILE_LOG="zz.log"

if [ ! -e $FILE_LOG ]
then
	touch $FILE_LOG
	echo "create file $FILE_LOG."
else
	echo "file $FILE_LOG exist."
fi

for i in {1..100}
do
	echo $i >> $FILE_LOG
	sleep 1
done

echo "shell exit."
exit 0
