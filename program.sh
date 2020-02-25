#!/bin/sh

if [ -n "$1" ] #check if programe have argument
then
	if [ $1 = -h ] || [ $1 = --help ] 
	then 
		echo "-h		--help			display the list of arguments and their description"
		echo "-r		--reset			reset config"
		echo "-c 		--config		display actual config"
		echo "-c <conf> 	--config <conf> 	change config"
	elif [ $1 = -r ] || [ $1 = --reset ] 
	then
		echo "reset"
	elif [ $1 = -c ] || [ $1 = --config ]
	then
		if [ -n "$2" ]
		then
			echo "config save"
		else
			echo "config is ..."
		fi
	fi
fi

