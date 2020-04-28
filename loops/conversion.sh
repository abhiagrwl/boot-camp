#!/bin/bash -x

read -p "enter inches you want to convert to feet" x
#inch=$(($x/12)) | bc

echo "scale=4; $x/12" | bc -q
#echo $inch 
