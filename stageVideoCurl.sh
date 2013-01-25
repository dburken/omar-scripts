#!/bin/sh

OMAR_URL=http://localhost/omar/dataManager/addVideo
if [ "$1" == "" ] ; then
	echo "Please specify a directory to stage"
	exit 1
fi
	for x in `find $1 -name "*.mpg" -o -name "*.mpeg" -o -name "*.ts"`; do 
		echo "Trying to add file $x";
		echo `curl -s -d "filename=$x" $OMAR_URL`;
	done

exit 0
