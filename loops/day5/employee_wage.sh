#!/bin/bash -x

ISPARTTIME=1
ISFULLTIME=2
RATE=200
CHECK=$((RANDOM%3))


if [ $ISPARTTIME -eq $CHECK ]
then
	HOURS=4;
elif [ $ISFULLTIME -eq $CHECK ]
then
        HOURS=8	
else
        HOURS=0	
	
fi
echo $(( $RATE * $HOURS))


