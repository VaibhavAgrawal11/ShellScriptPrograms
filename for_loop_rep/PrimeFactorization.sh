#!/bin/bash -x

echo "Enter a number:"
read number
temp=$number
for((iter=1; iter<=$((number/2)); iter++))
do
	flag=0

	if(($iter==1))
	then
		flag=1
	fi

	for((iter2=2; iter2<=$((iter/2)); iter2++))
	do
		if(($((iter%iter2))==0))
		then
			flag=1
		fi
	done
	if(($flag==0))
	then
		if(($((temp%iter))==0))
		then
			echo $iter
			temp=$((temp/iter))
			iter=$((iter-1))
		fi
	fi
done
