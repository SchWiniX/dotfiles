#! /usr/bin/bash
check_process() {
	[ `pgrep $1` ] && return 1 || return 0
}

name=$1

sleep .1

if check_process $name
then
	stdbuf -oL printf '{"text": "󰌌", "tooltip": "open keyboard", "class": "closed", "percentage": 0 }'
else
	stdbuf -oL printf '{"text": "󰌏", "tooltip": "close keyboard", "class": "open", "percentage": 100 }'
fi

