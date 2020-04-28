#!/bin/bash -x

isPartime=0
isFulltime=1
totalSalary=0
empRatePerHr=20
numWorkingDays=20



for ((i=1;i<$numWorkingDays;i++))
do
    empCheck=$((RANDOM%3));
    case $empCheck in 
	    $isFulltime)
		    empHrs=8
		    ;;
	    $isParttime)
		    empHrs=4
	 		;;
	    *)
                    empHrs=0
 			;;
    esac
    salary=$(($empHrs*$empRatePerHr));
    totalsalary=$(($totalsalary+$salary));
        
done


