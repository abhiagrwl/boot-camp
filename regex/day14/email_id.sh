#!/bin/bash -x

echo "enter word ending with thing"
read word

emailPat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+\.[a-zA-z]{2,4}([\.][a-zA-z]{2})$"
emailPat="^[a-zA-Z]+([.a-z].*)@([a-zA-Z]{1,})(.){1}([a-zA-Z]+)([.a-zA-Z]{1})$" ##working in regex website for all

#emailPat="^[0-9a-zA-Z]+([.+_-][0-9A-Za-z]+)*@[0-9a-zA-Z]+(\.)([a-zA-Z]{2,4})"


if [[ $word =~ $emailPat ]];
then
	echo yes;
else
	echo no;
fi


