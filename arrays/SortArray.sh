#!/bin/bash -x
#RANDOMLY GENERATE TEN 3 DIGIT NUMBER AND STORE THEM IN A ARRAY 
for(( iter=0; iter<10; iter++))
do
        random=$((RANDOM%900+100))
        array[$iter]=$random
done
echo ${array[@]}
#SORTING THE ARRAY WITH NESTED FORLOOP
for(( iter=0; iter<10; iter++))
do
   for(( nested=0; nested<10; nested++))
	do
		if((${array[iter]}<${array[nested]}))
		then
			temp=${array[iter]}
			array[$iter]=${array[nested]}
			array[$nested]=$temp
		fi
	done
done
echo "Sorted Array: "
echo ${array[@]}
echo "Second Largest: ${array[8]}"
echo "Second Smallest: ${array[1]}"

