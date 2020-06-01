#!/bin/bash

if [ -z "$TARGET_HOST" ]
then
	echo "\$TARGET_HOST environmental variable must be set, exitting..."
	exit 1
fi

while :
do
	shellinaboxd -s :root:root:HOME:"c3270 $TARGET_HOST" -v --css /shellinabox/shellinabox/white-on-black.css
done
