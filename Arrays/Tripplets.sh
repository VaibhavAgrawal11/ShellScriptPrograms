#!/bin/bash -x
echo "Enter elemenhts to check triplets: "
echo "Enter length: "
read length
#READING ELEMENTS OF ARRAY FROM USER
for((iteration=0; iteration<$length; iteration++))
do
	echo "Enter element"
	read element
	array[$iteration]=$element
done
echo "Entered Array is:"
echo ${array[@]}
#CHECKING ALL THE POSSIBLE TRIPLETS
for((iteration1=0; iteration1<$length-2; iteration1++))
do
	for((iteration2=$iteration1+1; iteration2<$length-1 ; iteration2++))
	do
		for((iteration3=$iteration2+1; iteration3<$length; iteration3++))
		do
			if(( `echo "${array[iteration1]}+${array[iteration2]}+${array[iteration3]} == 0" | bc -q`==1 ))
			then
				echo"Triplets are: "
				echo "${array[iteration1]} ${array[iteration2]} ${array[iteration3]}"
			fi
		done
	done

done
