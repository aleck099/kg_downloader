#!/bin/sh

if [ -z "$1" ]
then
	echo "Error: too few arguments!"
	exit 1
fi

read link
echo "Downloading $1"
curl -so "$1" $link
