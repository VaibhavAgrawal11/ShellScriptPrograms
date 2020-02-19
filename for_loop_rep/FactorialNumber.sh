#!/bin/bash -x
echo "Enter A Number"
read number
fact=1
for((iter=1; iter<=number; iter++))
do
	fact=$((fact*iter))
done
echo $fact
