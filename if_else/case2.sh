#!/bin/bash
#判断用户输入
read -p "Please choose yes/no: " -t 30 cho
#在屏幕上输出"请选择yes/no"，然后把用户选择赋予变量cho
case $cho in
	#判断变量cho的值
	"yes")
	#如果是yes
	echo "Your choose is yes!"
	#则执行程序1
	;;
	"no")
	#如果是no
	echo "Your choose is no!"
	#则执行程序2
	;;
	*)
	#如果既不是yes,也不是no
	echo "Your choose is error!"
	#则执行此程序
	;;
esac
