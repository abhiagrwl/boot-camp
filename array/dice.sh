#!/bin/bash -x

declare -A dice


for (( i=1;i<6;i++))
do

	#dice_roll=$((RANDOM%6 + 1))
	dice[$i]=0
	echo $dice_roll
	
done

for (( i=0;i<10;i++))
do

	dice_roll=$((RANDOM%6 + 1))
	#dice[dice_roll]=$((${dice[dice_roll]} + 1))
	(( dice["$dice_roll"]++ ))
	echo $dice_roll
	
done

echo "Values" ${dice[@]}
echo "Keys" ${!dice[@]}



