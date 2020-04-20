#!/bin/bash -x

read -p "enter first number" a
read -p "enter first number" b
read -p "enter first number" c

declare -A res

res[res1]=$(($a+$b*$c))
res[res2]=$(($a*$b+$c))
res[res3]=$(($c+$a/$b))
res[res4]=$(($a%$b+$c))

echo ${res[@]}

declare -a array
counter=0

for i in ${res[@]}
do
	echo $res[$i]
     array[((counter++))]=$res[$i]

done

echo ${array[@]}
