#! /usr/bin/bash
check_process() {
	[ `pgrep $1` ] && return 0 || return 1
}

name=$1
if check_process $name
then
	pkill $name
else
	eval $name
fi


