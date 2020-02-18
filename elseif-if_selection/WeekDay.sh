echo "Enter the week Number: "
read weekday
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
else
	echo "Invalid"
fi
