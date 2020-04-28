#!/bin/bash -x

read -p "Enter first number:" x
read -p "Enter second number:" y
z=$(( $x + $y ))
echo $z

echo "Printing random value $RANDOM"
echo "Printing random value single digit $(( RANDOM % 10 ))"
