#!/bin/bash

func(){
	echo $#
	echo $@
	return 0
}

func 12 4 53
