#!/bin/bash -x


echo -n "Enter the numer: "
read num


case $num in

  0)
    echo -n "Sunday"
    ;;

  1)
    echo -n "monday"
    ;;
  2)
    echo -n "tuesday"
    ;;
  3)
    echo -n "wednesday"
    ;;
  4)
    echo -n "thursday"
    ;;
  5)
    echo -n "friday"
    ;;
  6)
    echo -n "Saturday"
    ;;
  *)
    echo -n "unknown"
    ;;
esac
