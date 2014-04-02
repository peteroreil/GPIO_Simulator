#!/bin/bash

while [ true ] ; do  

EXPORT=`cat export`;
UNEXPORT=`cat unexport`;

	if [ "$EXPORT" != "" ] ; then
		mkdir gpio$EXPORT;
		touch gpio$EXPORT/direction;
		touch gpio$EXPORT/value;
		rm export;	
		touch export;
	fi

	if [ "$UNEXPORT" != "" ] && [[ -d "gpio$UNEXPORT" ]] ; then
		rm -rf gpio$UNEXPORT;
		rm unexport;
		touch unexport;
	fi
done
