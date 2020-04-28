#!/bin/bash -x


function myfunc()
{
echo $1
}


res="$( myfunc $((RANDOM%2)) )"
if [ $res -eq 1 ]
then
	echo "success"
else
	echo "failure"
fi	
