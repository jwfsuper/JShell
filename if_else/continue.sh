#!/bin/bash
while :
do
	echo -n "输入 1 到 5 之间的数字:"
	read aNum
	case $aNum in
		1|2|3|4|5) echo "你输入的数字为 $aNum!"
		;;
		0) echo "You input the num(0). break"
			break
		;;
		*) echo "你输入的数字不是 1 到 5 之间的! Go on..."
			continue
		;;
	esac
done

echo "exit."
