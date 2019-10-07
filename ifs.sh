#!/bin/bash

line="root:x:0:0:root:/root:/bin/bash"
echo line: $line

oldIFS=$IFS
IFS="/"
count=0
for item in $line;
do
	echo item: $item
	[ $count -eq 0 ] && user=$item;
	[ $count -eq 6 ] && shell=$item;
	let count++
done;
IFS=$oldIFS
echo $user\'s shell is $shell;

