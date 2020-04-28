#!/bin/bash -x

echo "enter word ending with thing"
read word

pat=[0-9]{6}
pat=^[0-9]{6}
pat=^[0-9]{6}$
pat="^[0-9]{3}[[:space:]]*[0-9]{3}$"



if [[ $word =~ $pat ]];
then
	echo yes;
else
	echo no;
fi

