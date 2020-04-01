#! /bin/bash -x

#Program to findout total salary of Employee till reache 100 hours and 20 days 
#Declaration of Array
declare -a empDailyWage

#CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1
IS_FULL_TIME=2
EMPLOYEE_RATE_PER_HOUR=20
WORKING_DAYS_PER_MONTH=20
WORKING_HOURS_PER_MONTH=100

#Variable
totalWorkingDays=0
totalWorkingHours=0

#Function to find Employee working hours
function getWorkingHours() {
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

#Function to calculate daily wage of Employee
function getDailyWage() {
	local workHours=$1
	wageOfDay=$(($workHours * $EMPLOYEE_RATE_PER_HOUR))
	echo $wageOfDay
}

#Function to store and calculate daily and total wage
function employeeWageComputation () {
	while [[ $totalWorkingHours -lt $WORKING_HOURS_PER_MONTH && $totalWorkingDays -lt $WORKING_DAYS_PER_MONTH ]]
	do
   		(( totalWorkingDays++))
    		workHours="$( getWorkingHours $(( RANDOM%3)) )"
		totalWorkingHours=$(($totalWorkingHours+$workHours))
		empDailyWage[$totalWorkingDays]="$( getDailyWage $workHours )"
	done
totalSalary=$(($totalWorkingHours * $EMPLOYEE_RATE_PER_HOUR))
echo "Day:           " ${!empDailyWage[@]}
echo "Daily Wage:    " ${empDailyWage[@]}
echo "Total salary:  " $totalSalary
}

#First function of the program to check hours and days reached 100 and 20 resp
employeeWageComputation
