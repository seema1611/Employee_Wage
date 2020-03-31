#!/bin/bash -x

#Program to Check Employee is Present Or Not
#Constants
EMPLOYEE_RATE_PER_HOUR=20

isPresent=1                            			#Assign 1 to Employee is Present
randomCheck=$((RANDOM % 2 ))            			#Find Random here
if [ $isPresent -eq $randomCheck ]     			#Condition check here
then
	echo "Employee is Present"
	empHours=8
else
	echo "Employee is Absent"
	empHours=4
fi
dailyEmpWage=$(($empHours * $EMPLOYEE_RATE_PER_HOUR ))
echo $dailyEmpWage
