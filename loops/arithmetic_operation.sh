#!/bin/bash -x

a=2
b=3
c=3

echo $((a+b*c))
echo $((a%b+c))
echo $((c+a/b))
echo $((a*b+c))
