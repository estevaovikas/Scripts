#! /bin/bash

if pgrep nginx &> /dev/null
then
	echo "Nginx Operante $( date +"em %Y-%m-%d às %H:%M:%S")"
else
	echo "Nginx Inoperante $( date +"em %Y-%m-%d às %H:%M:%S")"
fi
