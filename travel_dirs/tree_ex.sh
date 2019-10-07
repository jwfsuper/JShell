#!/bin/bash

FILE_PASS=0

#ex: print_file hello.txt 2 0
print_file(){
	if [ $# -lt 3 ];then
		return 1
	fi
	file=$1		#filename
	local num=$2		#count
	while [ $num -gt 1 ]
	do
		printf "|  "
		let num--
	done
	dir_flag=$3
	if [ $dir_flag -eq 1 ];then
		echo -e "|--\e[1;34m$file\e[0m"
	else
		printf "|--%s\n" $file
	fi
}


read_dir()
{
	local cnt=$2

	for file in `ls $1`
	do
		path=$1"/"$file
		name=`basename $path`
		if [ -d $path ]  
		then
			print_file $name $cnt 1		#the last arg: stand for the dir/file role. dir(1) file(0)
			read_dir $path $[cnt+1]		#if cnt is a global value, after calling `cnt=$2`, the value of cnt changed, added by 1.
			# let cnt--
		elif [ $FILE_PASS -eq 1 ];then
			continue
		else
			print_file $name $cnt 0
		fi
	done
}
# read_dir $1 1

################ parse the args. ################
set -- $(getopt -q d "$@")	
# pargs $@
while [ -n "$1" ]
do
	case "$1" in
		-d)
			FILE_PASS=1 ;;
		--)
			shift
			break ;;
		*)
			echo "$1 is not an option" 
			exit 1 ;; 
	esac
	shift
done

if [ $# = 1 ];then
	DIR=${1:1:-1}
	if [ -d $DIR ]; then	
		read_dir $DIR 1
		# echo scan dir $DIR
	else
		echo $DIR is not a valid dir.
		exit 1
	fi
else
	read_dir . 1
	# echo scan current dir.
fi

exit 0
