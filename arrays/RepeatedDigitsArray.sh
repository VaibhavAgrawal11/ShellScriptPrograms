#!/bin/bash -x
count=0
#RUN THE LOOP FROM 0 TO 100 TO CHECK ALL THE REPEATED TWO DIGITS NUMBERS
for((iteration=0; iteration<100; iteration++))
do

	temp=$iteration
	tenthDigit=$((temp%10))
	temp=$((temp/10))
	unitDigit=$temp
	if(($tenthDigit==$unitDigit))
	then
		array[$count]=$iteration
		count=$((count+1))
	fi
done
echo ${array[@]}
