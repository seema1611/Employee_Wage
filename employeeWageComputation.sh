#!/bin/bash -x

#Program to findout Employee Wages till hours and days is reached For A Month
#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
WORKING_DAYS_PER_MONTH=20
WORKING_HOURS_PER_MONTH=100

#Variables
totalWorkingDays=0
totalWorkingHours=0

while [[ $totalWorkingDays -lt $WORKING_DAYS_PER_MONTH && $totalWorkingHours -lt $WORKING_HOURS_PER_MONTH ]]
do
	((totalWorkingDays++))
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
	totalWorkingHours=$(($totalWorkingHours + $empHours ))
done
totalSalary=$(($totalWorkingHours * $EMPLOYEE_RATE_PER_HOUR ))
echo $totalSalary
