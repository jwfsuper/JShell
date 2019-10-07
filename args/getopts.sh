#!/bin/bash

# example see  https://www.cnblogs.com/yxzfscg/p/5338775.html
# spring boot shell https://blog.csdn.net/qq_34208844/article/details/84874393

usage(){
	echo "请输入命令参数选项"
}

print_args(){
	while [ $# -ge 1 ]
	do
		echo $1; shift 1
	done
}
#echo "+++++++++++"

DIR_FLAG=0

# 单个字母前带冒号表示参数的值不是必须的 前面有冒号表示参数必须有选项的值
while getopts 'd::ft:' OPT; do
	case ${OPT} in
		d)
			DEL_DAYS="$OPTARG";;
		f)
			DIR_FLAG=1;;
		t)
			DIR_TO="$OPTARG";;
		?)
			echo "Usage: `basename $0` [options] filename"
			exit 1
	esac
done

echo "DEL_DAYS: $DEL_DAYS"
echo "DIR_FLAG: $DIR_FLAG"
echo "DIR_TO: $DIR_TO"

# getopts在处理参数的时候，处理一个开关型选项(不带值选项)，OPTIND加1，
# 处理一个带值的选项参数，OPTIND则会加2
if [[ $OPTIND -eq 1 ]]; then
	usage
fi

exit 0
