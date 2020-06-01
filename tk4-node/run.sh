#!/bin/bash

if [ ! -f "/data/created" ]
then
	tar xvf /tk4/shadow.tar
	touch /data/created
fi

cd /tk4
./mvs
