#!/bin/bash

if [ ! -f "/data/created" ]
then
	tar xvf /tk4/shadow.tar
	touch /data/created
	echo "Restored templated shadow files."
fi

cd /tk4
echo "Starting TK4-..."
./mvs
