#!/bin/bash -x

palindrom()
{
num=$1
temp=$num 
   
while [ $num -gt 0 ] 
do
    # Get Remainder 
    s=$(( $num % 10 ))   
      
    # Get next digit 
    num=$(( $num / 10 ))  
      
    # Store previous number and 
    # current digit in reverse  
    rev=$( echo ${rev}${s} )  
done
   
if [ $temp -eq $rev ]; 
then
    echo "Number is palindrome"
    return 1
else
    echo "Number is NOT palindrome"
    return 0
fi


}


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

read -p "check no is prime and palindrome" x
palindrom $x

res=$?

if [ $res -eq 1 ]

then
	check_prime $x
fi	
#palindrom 144


