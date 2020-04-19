#!/bin/bash -x


read -p "enter n" n
sum=0.0

for ((i=1;i<=$n;i++))
do      
	x=`echo "scale=1; 1/$i" | bc -q`
	sum=$((sum+x))
done	
