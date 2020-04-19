#!/bin/bash -x


counter=0
read -p "enter no " num 
for (( i=2; i<=$num; i++ ));do 
    while [ $((num%$i)) -eq 0 ]; 
    do 
        echo $i 
	arr[((counter))]=$i
	counter=$(($counter+1))
        num=$((num/$i)) 
    done 
done


echo ${arr[*]}


