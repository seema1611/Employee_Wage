#!/bin/bash -x

#Program to findout Employee Wages till hours and days is reached For A Month using function
#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
WORKING_DAYS_PER_MONTH=20
WORKING_HOURS_PER_MONTH=100

#Variables
totalWorkingDays=0
totalWorkingHours=0

function getEmployeeHours() {
   case $1 in
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
   echo $empHours

}

while [[ $totalWorkingDays -lt $WORKING_DAYS_PER_MONTH && $totalWorkingHours -lt $WORKING_HOURS_PER_MONTH ]]
do

	((totalWorkingDays++))
	employeeHours="$( getEmployeeHours $((RANDOM%3)) )"
	totalWorkingHours=$(($totalWorkingHours + $employeeHours ))
done

totalSalary=$(($totalWorkingHours * $EMPLOYEE_RATE_PER_HOUR ))
echo $totalSalary
