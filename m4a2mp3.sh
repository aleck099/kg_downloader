#!/bin/sh

for F in `ls *.m4a`
do
	ffmpeg -i "$F" "${F:0:-4}".mp3
done

