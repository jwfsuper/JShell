#!/bin/sh

echo $$		#get the pid.

child_shell=$(echo $$)
echo $child_shell

fruit=apple
count=5

#得到两个数相加的和
add ()
{
	return `expr $1 + $2`
}

add 23 50  #调用函数

# echo $?  #获取函数返回值
exit 0
