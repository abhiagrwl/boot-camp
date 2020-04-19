#!/bin/bash -x


no1=$((RANDOM%100))
no2=$((RANDOM%100))
no3=$((RANDOM%100))
no4=$((RANDOM%100))
no5=$((RANDOM%100))
sum=$(($no1 + $no2 + $no3 + $no4 + $no5))
echo $sum
avg=$(($sum/5))
echo $avg

