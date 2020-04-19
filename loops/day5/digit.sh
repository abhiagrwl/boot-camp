#!/bin/bash -x


echo -n "Enter the numer: "
read num


case $num in

  0)
    echo -n "zero"
    ;;

  1)
    echo -n "one"
    ;;
  2)
    echo -n "two"
    ;;
  3)
    echo -n "three"
    ;;
  4)
    echo -n "four"
    ;;
  5)
    echo -n "five"
    ;;
  6)
    echo -n "Six"
    ;;
  7)
    echo -n "Seven"
    ;;
  8)
    echo -n "eight"
    ;;
  9)
    echo -n "nine"
    ;;
  *)
    echo -n "unknown"
    ;;
esac
