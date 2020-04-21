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
	echo $i
     array[((counter++))]=$i

done

echo ${array[@]}

sort () {
    for ((i=0; i <= $((${#array[@]} - 2)); ++i))
    do
        for ((j=((i + 1)); j <= ((${#array[@]} - 1)); ++j))
        do
            if [[ ${array[i]} -gt ${array[j]} ]]
            then
                # echo $i $j ${array[i]} ${array[j]}
                tmp=${array[i]}
                arr[i]=${array[j]}
                arr[j]=$tmp
            fi
        done
    done
}

sort "${array[@]}"

echo ${arr[*]}


echo ${array[@]}
