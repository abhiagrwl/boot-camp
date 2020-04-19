#!/bin/bash -x




read -p "Enter how many numbers : " n
read -p "Enter integer value : " num
max=$num
min=$num

for ((i=1; i<n; i++))
do
	read -p 'Enter integer value : ' newnum
	if [ $newnum -gt $max ];  
		then
			max=$newnum
	fi
	if [ $newnum -lt $min ];  
		then
			min=$newnum
	fi
done
echo “The maximum number is : $max”
echo “The minimum number is : $min”
