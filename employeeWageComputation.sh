#!/bin/bash -x 

#Program to findout Employee Wage For A Month
#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
WORKING_DAYS_PER_MONTH=20

totalSalary=0
for (( day=1; day<=WORKING_DAYS_PER_MONTH; day++ ))
do
	randomCheck=$((RANDOM % 3 ))
	case $randomCheck in
		$IS_FULL_TIME)
			empHours=8
			;;
		$IS_PART_TIME)
			empHours=4
			;;
		*)
			empHours=0
			;;
	esac
	salary=$(($empHours * $EMPLOYEE_RATE_PER_HOUR ))
	totalSalary=$(($totalSalary + $salary ))
	echo $totalSalary
done
