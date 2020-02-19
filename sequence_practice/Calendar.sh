#!/bin/bash -x
month=$1
day=$2
year=$3

tempyear=$(( year- (( 14-month))/12 ))
leapdays=$(( tempyear + tempyear/4 -tempyear/100 + tempyear/400))
tempmonth=$(( month + 12 * (( (( 14- month ))/12))-2 ))
weekday=$(( ((day + leapdays + 31*tempmonth/12 ))%7))
echo $weekday
if(($weekday==0))
then
	echo "Sunday"
elif(($weekday==1))
then
	echo "Monday"
elif(($weekday==2))
then
        echo "Tuesday"
elif(($weekday==3))
then
        echo "Wednesday"
elif(($weekday==4))
then
        echo "Thrusday"
elif(($weekday==5))
then
        echo "Friday"
elif(($weekday==6))
then
        echo "Saturday"
fi
