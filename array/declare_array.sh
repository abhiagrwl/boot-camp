#!/bin/bash -x

counter=0
fruits[((counter++))]="apple"
fruits[((counter++))]="banana"
fruits[((counter++))]="orange"

#echo ${fruits[@]}

fruits[4]="watermelon"
#echo ${fruits[*]}

declare -a array

array=(apple orange lemon)


for i in ${array[@]}
do
  echo $i
done
