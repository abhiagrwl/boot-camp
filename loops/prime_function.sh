#!/bin/bash -x



check_prime()
{
	a=$1
	i=2
	z=0
	while [ $i -lt $a ]
	do
		s=$(($a % $i))
		if [ $s -eq $z ]
		then
			echo "Not Prime"
			exit
		else
			i=`expr $i + 1`
		fi
	done

	echo "Prime number"
}

check_prime 5
check_prime 10
