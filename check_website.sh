#!/bin/bash

while true 
do
	if ping -c 1 google.com >/dev/null ; then
		echo " website is LIVE"
	else 
		echo " website is DOWN"
	fi
	sleep 5
done

