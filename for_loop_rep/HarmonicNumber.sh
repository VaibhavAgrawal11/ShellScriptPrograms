#!/bin/bash -x

echo "Enter a Number: "
read number
harmonic=0
for((iter=1; iter<=number; iter++ ))
do
	harmonic=`echo "$harmonic+1/$iter" | bc -l`
done
echo $harmonic
