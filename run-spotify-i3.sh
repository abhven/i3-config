#!/bin/bash


start_spotify_maybe() {
	if pgrep -x "spotify" > /dev/null;
		then
			echo "Running";
		else
			nohup spotify &> /dev/null &
	fi
}


i3-msg "workspace spotify"
start_spotify_maybe
