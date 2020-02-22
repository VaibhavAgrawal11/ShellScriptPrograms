#!/bin/bash -x
echo "Enter a number:"
#VARIABLES
read number
temp=$number
count=0
flag=0
#LOOPING UNTIL ALL THE PRIME FACTORS ARE ADDED IN ARRAY
for((iter=1; iter<=$((number/2)); iter++))
do
	if(($iter==1))
	then
		flag=1
	fi
	#CHECKING FOR NUMBER STORED IN ITER IS PRIME OR NOT
	for((iter2=2; iter2<=$((iter/2)); iter2++))
	do
		if(($((iter%iter2))==0))
		then
			flag=1
		fi
	done
	if(($flag==0))
	then
		#IF THE NUMBER IS PRIME THEN ADD IT IN ARRAY
		if(($((temp%iter))==0))
		then
			array[$count]=$iter
			temp=$((temp/iter))
			iter=$((iter-1))
			count=$((count+1))
		fi
	fi
done
echo "${array[@]}"
