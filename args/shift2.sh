#!/bin/bash  

i=1
while [ $# != 0 ];do  
	echo "第一个参数为：$1,参数个数为：$#"  
	shift 2
	let "i++"
	if [ $i -gt 5 ]; then
		break
	fi
done  

