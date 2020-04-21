#!/bin/bash -x

count=11
num=1

coin=1
head_count=1
tail_count=1
while [ $(($head_count-$tail_count)) -lt 2 ] || [ $(($tail_count-$head_count)) -lt 2 ]
do
	coin=$(($RANDOM % 2))
	if [ $coin -eq 1 ]
	then
		echo "HEAD"
		head_count=$((head_count + 1))
		if [ $head_count -eq 11 ]
		then
			#exit
			break
		fi
	else
		echo "TAIL"
		tail_count=$((tail_count + 1))
		if [ $tail_count -eq 11 ]
		then
			#exit
			break

		fi
	fi	
	

done

echo "Difference between both the counts is : $(($head_count-$tail_count))" 
