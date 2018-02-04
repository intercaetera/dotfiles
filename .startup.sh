#!/usr/bin/env bash

. "${HOME}/.cache/wal/colors.sh"

rl_dunst() {
	pkill dunst
	dunst \
		-lb "${color0:-#FFFFFF}" \
        -nb "${color0:-#FFFFFF}" \
        -cb "${color0:-#FFFFFF}" \
        -lf "${color15:-#000000}" \
        -bf "${color15:-#000000}" \
        -cf "${color15:-#000000}" \
        -nf "${color15:-#000000}" \
		-frame_color "${color15:-#000000}"&
}

rl_dunst &
