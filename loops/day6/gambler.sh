#!/bin/bash -x

initial=100
maxm=200
won=0
num=1

while [ "$initial" -ge 0 ]  && [ "$won" -le 201 ]
do
	coin=$(($RANDOM % 10))
	user=$(($RANDOM % 10))

	if [ $coin -eq $user ]
	then
		won=$(($won + $coin))
		initial=$(($won + $initial))
	else
		initial=$((initial-1))
	fi	

done
