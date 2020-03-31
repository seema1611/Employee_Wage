#!/bin/bash -x

#Program to Check Employee is Present Or Not
isPresent=1                            			#Assign 1 to Employee is Present
randomCheck=$((RANDOM % 2 ))            			#Find Random here
if [ $isPresent -eq $randomCheck ]     			#Condition check here
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
