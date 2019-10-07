#!/bin/bash

func(){
	if [ $# -lt 1 ];then
		return 1
	fi
	if [ $1 -lt 1 ];then
		return 0
	fi
	local num=$1	# local value.
	func $[num-1]
	echo num: $num
}

func 12 
