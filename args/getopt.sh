#!/bin/bash
# Extract command line options & values with getopt

pargs $@	#pargs is an function defined self.
set -- $(getopt -q ab:cd "$@")	#There is a difference between ":" and "::" like the getopt func in C language.
pargs $@	# To see the rearranged array.

while [ -n "$1" ]
do
	case "$1" in
		-a)
			echo "Found the -a option" ;;
		-b)
			param="$2"
			echo "Found the -b option, with parameter value $param"
			shift ;;
		-c)
			echo "Found the -c option" ;;
		-d)
			echo "Found the -d option" ;;
		--)
			shift
			break ;;
		*)
			echo "$1 is not an option" #This cmd will not be executed since the "--)" branch statement.
			exit 1 ;; 
	esac
	shift
done

echo "param: $param"
exit 0
