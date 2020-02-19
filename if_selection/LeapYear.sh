#!/bin/bash -x
echo "Enter year"
read year
if(( year > 999 ))
then
	if(( $year%400 == 0 || $year%4 == 0 && $year%100 !=0 ))
	then
		echo "leap year"
 	else
		echo "Not a Leap Year"
	fi
else
	echo "Invalid Input"
fi
