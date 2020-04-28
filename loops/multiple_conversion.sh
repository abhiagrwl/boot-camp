#!/bin/bash -x


echo "1 : Feet to inch"
echo "2 : Feet to meter"
echo "3 : Inch to feet"
echo "4 : meter to feet"


echo -n "Enter the numer: "
read num


case $num in


  1)
    echo -n "one"
    read -p "enter feet:" feet
    echo "scale=4; $feet*12" | bc -q
    ;;
  2)
    read -p "enter feet:" feet
    echo "scale=4; $feet*0.3048" | bc -q
    ;;
  3)
    read -p "enter inch:" inch
    echo "scale=4; $inch/12" | bc -q
    ;;
  4)
    read -p "enter meter:" meter
    echo "scale=4; $meter/0.3048" | bc -q
    ;;
  *)
    echo -n "unknown"
    ;;
esac
