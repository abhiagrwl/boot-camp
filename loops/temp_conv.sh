
#!/bin/bash -x


echo -n "Enter 1 : Find degF and 2: Find degC "
read num


function change_to_degF()
{
        degC=$1
	tf=$(echo "scale=2;((9/5) * $degC) + 32" |bc)
        echo $tf
}


function change_to_degC()
{
        degF=$1
	tc=$(echo "scale=2;(5/9)*($degF-32)"|bc)
        echo $tc
}

case $num in

  1)
	read -p "enter temp in defC" degC
	#tf=$(echo "scale=2;((9/5) * $degC) + 32" |bc)
	#echo $tf
        change_to_degF $degC
	;;
  2)
  		  
	read -p "enter temp in defF" degF
        change_to_degC $degF
	#tc=$(echo "scale=2;(5/9)*($degF-32)"|bc)
	#echo $tc
        ;;
esac	


