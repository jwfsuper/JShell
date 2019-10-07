#!/bin/bash

echo   "\$@"
echo 'A: ' $*
echo 'B: ' $@
echo 'C: ' "$*"
echo 'D: ' "$@"

echo 'args from \$*'
for arg in $*; do
	echo "a: $arg"
done

echo 'args from \$@'
for arg in $@; do
	echo "b: $arg"
done

echo "***************************"
echo 'args from "\$*"'
for arg in "$*"; do
	echo "a: $arg"
done

echo 'args from "\$@"'
for arg in "$@"; do
	echo "b: $arg"
done
