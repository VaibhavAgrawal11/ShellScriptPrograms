#!/bin/bash -x
echo "Enter Three numbers:"
read number1
read number2
read number3
#AIRTHMATIC OPERATIONS ARE BEEN PERFORMED
echo "scale=2 ;  $num1 + $num2 * $num3" | bc
echo "scale=2 ;  $num1 % $num2 + $num3" | bc -l
echo "scale=2 ;  $num3 + $num1 / $num2" | bc
echo "scale=2 ;  $num1 * $num2 + $num3" | bc
