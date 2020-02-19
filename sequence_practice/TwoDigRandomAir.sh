#!/bin/bash -x
rand1=$((RANDOM%90+10))
echo $rand1
rand2=$((RANDOM%90+10))
echo $rand2
rand3=$((RANDOM%90+10))
echo $rand3
rand4=$((RANDOM%90+10))
echo $rand4
rand5=$((RANDOM%+90+10))
echo $rand5
sum=$((rand1+rand2+rand3+rand4+rand5))
echo sum is $sum
echo "scale=2;  $sum/5" | bc -l
