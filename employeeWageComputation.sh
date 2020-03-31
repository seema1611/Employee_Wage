#!/bin/bash -x

#Program to findout daily Employee wage with partTime And FullTime
#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1

isPresent=1
randomCheck=$((RANDOM % 3 ))
if [ $IS_FULL_TIME -eq $randomCheck ]
then
	empHours=8
elif [ $IS_PART_TIME -eq $randomCheck ]
then
	empHours=4
else
	empHours=0
fi
dailyEmpWage=$(($empHours * $EMPLOYEE_RATE_PER_HOUR ))
echo $dailyEmpWage
