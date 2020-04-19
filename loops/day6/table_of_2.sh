#!/bin/bash -x


read -p "enter n" n
power=1

for ((i=1;i<=$n;i++))
do
	power=$((2 ** i))
	if [ $power = 256 ]
	then
		echo "Got 256"
		exit
	fi	
done	
