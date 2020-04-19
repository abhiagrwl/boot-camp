#!/bin/bash -x

count=11
num=1

coin=1
head_count=1
tail_count=1
while : 
do
	coin=$(($RANDOM % 2))
	if [ $coin -eq 1 ]
	then
		echo "HEAD"
		head_count=$((head_count + 1))
		if [ $head_count -eq 11 ]
		then
			exit
		fi
	else
		echo "TAIL"
		tail_count=$((tail_count + 1))
		if [ $tail_count -eq 11 ]
		then
			exit

		fi
	fi	
	

done
