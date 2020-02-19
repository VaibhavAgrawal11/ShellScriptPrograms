#!/bin/bash -x
echo "Enter Three numbers:"
read num1
read num2
read num3
#sol1=$(( $(( num1 +  num2 )) * num3 ))
sol1=`echo "scale=2 ;  $num1 + $num2 * $num3" | bc -l`
min=$sol1
max=$sol1
sol2=`echo "scale=2 ;  $num1 % $num2 + $num3" | bc -l`
sol3=`echo "scale=2 ;  $num3 + $num1 / $num2" | bc -l`
sol4=`echo "scale=2 ;  $num1 * $num2 + $num3" | bc -l`

echo $sol1 $sol2 $sol3 $sol4

#to find max
if((`echo "$max < $sol2" | bc -q`==1 ))
then
	max=$sol2
elif((`echo "$max<$sol3" | bc -q`==1))
then
        max=$sol3
elif((`echo "$max<$sol4" | bc -q`==1))
then
        max=$sol4
fi
#to find min
if((`echo "$min>=$sol2" | bc -q`==1))
then
        min=$sol2
elif((`echo "$min>=$sol3" | bc -q`==1))
then
        min=$sol3
elif((`echo "$min>$sol4" | bc -q`==1))
then
        min=%$sol4
fi
echo "Maximum: $max"
echo "Minimum: $min"
