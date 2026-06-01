#!/bin/bash

read -p "enter the service you want to check : " service

if sudo systemctl is-active $service ; then
	echo "your service is active"
else
	sudo systemctl restart $service
        if sudo systemctl is-active $service ; then 
		echo "your service is active now"
	else
		echo "your service is not active again"
	fi
fi	
