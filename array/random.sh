#!/bin/bash -x


#function secondGreatest()
#{
        #array=$1
	largest=${array[0]}
	secondGreatest='unset'

	for((i=1; i < ${#array[@]}; i++))
	do
	  if [[ ${array[i]} > $largest ]]
	  then
	    secondGreatest=$largest
	    largest=${array[i]}
	  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
	  then
	    secondGreatest=${array[i]}
	  fi
	done

	echo "secondGreatest = $secondGreatest"



#}


counter=0
for (( i=0;i<10;i++ ))
do
	num=$((RANDOM%1000))
	echo $num
	arr[((counter))]=$num
	counter=$((counter+1))
done



echo ${arr[*]}
#secondGreatest $arr
##########################################FINDING SECOND LARGEST
largest=${arr[0]}
secondGreatest='unset'

for((i=1; i < ${#arr[@]}; i++))
do
  if [[ ${arr[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${arr[i]}
  elif (( ${arr[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${arr[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${arr[i]}
  fi
done


echo ${arr[*]}
echo "secondGreatest = $secondGreatest"
###################################################################################

#FINDING SECOND SMALLEST NUMBER
###################################################################################
smallest=${arr[0]}
secondSmallest=${arr[0]}

for((i=0; i < ${#arr[@]}; i++))
do
  if [[ ${arr[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${arr[i]}

  elif (( ${arr[i]} != $smallest )) && { [[ "${arr[i]}" < "$secondSmallest" ]] ; }
  then
    secondSmallest=${arr[i]}
  fi
done


echo ${arr[*]}
echo "secondSmallest = $secondSmallest"
echo "secondGreatest = $secondGreatest"
###################################################################################
sort () {
    for ((i=0; i <= $((${#arr[@]} - 2)); ++i))
    do
        for ((j=((i + 1)); j <= ((${#arr[@]} - 1)); ++j))
        do
            if [[ ${arr[i]} -gt ${arr[j]} ]]
            then
                # echo $i $j ${arr[i]} ${arr[j]}
                tmp=${arr[i]}
                arr[i]=${arr[j]}
                arr[j]=$tmp         
            fi
        done
    done
}

sort "${arr[@]}"

echo ${arr[*]}
echo ${arr[1]}
len=$((${#arr[@]} - 2))

echo ${arr[$len]}

