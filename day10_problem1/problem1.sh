#!/bin/bash -x

read -p "enter first number" a
read -p "enter first number" b
read -p "enter first number" c

res1=$(($a+$b*$c))
res2=$(($a*$b+$c))
res3=$(($c+$a/$b))
res4=$(($a%$b+$c))

