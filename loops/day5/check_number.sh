#!/bin/bash -x

read -p "enter a number " num


case $num in

  1)
    echo -n "One"
    ;;
  10)
    echo -n "Ten"
    ;;
  100)
    echo -n "Hundred"
    ;;
  1000)
    echo -n "Thousand"
    ;;
  *)
    echo -n "unknown"
    ;;
esac
