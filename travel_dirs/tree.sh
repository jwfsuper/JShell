#!/bin/bash

read_dir()
{
	for file in `ls $1`
		do
			if [ -d $1"/"$file ]  
				then
					read_dir $1"/"$file
			else
				echo $1"/"$file
		    fi
		done
}
#测试目录 test
read_dir test
