#!/bin/bash -x



factorial=1
 
read -p "enter number" counter
 
while [[ $counter -gt 0 ]]; do
   factorial=$(( $factorial * $counter ))
   counter=$(( $counter - 1 ))
done
 
echo $factorial
