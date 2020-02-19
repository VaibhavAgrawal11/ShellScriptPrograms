#!/bin/bash -x
echo "Enter a number:"
read number
power=1
for (( iter=1; iter<=number+1; iter++ ))
do
	echo $power
	power=$((power*2))
done
