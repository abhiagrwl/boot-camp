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

echo "saving dict into array "${array[@]}

sort () {
    for (( i=0; i <= $((${#array[@]} - 2)); ++i ))
    do
        for (( j=((i + 1)); j <= ((${#array[@]} - 1)); ++j ))
        do
            if [[ ${array[i]} -gt ${array[j]} ]]
            then
                # echo $i $j ${array[i]} ${array[j]}
                tmp=${array[i]}
                array[i]=${array[j]}
                array[j]=$tmp
            fi
        done
    done
}

sort "${array[@]}"

echo "In ascending order "${array[*]}


echo ${array[@]}


declare -a desc
counter=0

for (( i=${#array[@]}-1 ; i>=0 ; i-- )) ; do
	desc[((counter++))]="${array[i]}"
done


echo "In Descending order "${desc[*]}
