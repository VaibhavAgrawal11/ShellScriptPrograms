#!/bin/bash -x
echo "Welcome And Guess the Magic Number:"
lower=1
upper=100
magic_number=$((RANDOM%100+1))
number=-1
#echo $magic_number
while (($lower<=$upper && $number!=$magic_number ))
do
	echo "Guess a number between $lower to $upper"
	read number

	if(($number==$magic_number))
	then
		echo "You Found the Magic Number!!!!"
	elif(($number<$magic_number))
	then
		lower=$number
	else
		upper=$number
	fi
done


