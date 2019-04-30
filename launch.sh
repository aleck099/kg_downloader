#!/bin/sh

if [ -z "$1" ]
then
	echo "Error: too few arguments!"
fi

if [ -z "$2" ]
then
	echo "Error: too few arguments!"
fi


curl -Ls "$1" |grep 'stream.kg.qq.com' |./takelink.py |./calldown.sh "$2"
