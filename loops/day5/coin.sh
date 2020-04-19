#!/bin/bash -x

head=1
num=$((RANDOM%2))
if [ $num -eq $head ];
then
	echo "HEAD"
else
	echo "TAIL"
fi	
