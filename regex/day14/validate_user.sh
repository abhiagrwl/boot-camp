#!/bin/bash -x

echo "enter first name"
read first

echo "enter last name"
read last

echo "Enter your contact number"
read contact_no

echo "Enter you password"
read password


user="^[A-Z][a-z]{2,}"
mob_no="^[0-9]{2}[[:space:]][0-9]{10}$"
#pass="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"

##Verify for user name
if  [[ $first =~ $user ]] && [[ $last =~ $user ]] ;
then
	echo User_name Validated;
else
	echo User name is not valid;
fi

##verify for contact no
if  [[ $contact_no =~ $mob_no ]];
then
	echo Contact no Validated;
else
	echo Contact no is not valid;
fi


##verify for password


pat1="[A-Z]+"
pat2="[a-z]+"
pat3="[0-9]+"
pat4="[#!@$%^&*]+"
len="${#password}"

if  [[ $password =~ $pat1 ]] && [[ $password =~ $pat2 ]] && [[ $password =~ $pat3 ]] && [[ $password =~ $pat4 ]] && [[ $len -ge 8 ]];
then
	echo Password is  Validated;
else
	echo password no is not valid;
fi
