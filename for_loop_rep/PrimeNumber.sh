#!/bin/bash -x
echo "Enter a Number"
read  number
flag=0
if(($number==1))
then
	flag=1
fi

for((iter=2; iter<=$((number/2)); iter++))
do
	if(($((number%iter))==0))
	then
		flag=1
	fi
done
if(($flag==0))
then
	echo "Prime Number"
else
	echo "Not Prime Number"
fi
