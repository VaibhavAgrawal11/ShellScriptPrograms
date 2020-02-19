#!/bin/bash -x
lengthFt=60
breadthFt=40
lengthM=`echo "scale=2; $lengthFt/3.218" | bc -l`
breadthM=`echo "scale=2; $breadthFt/3.218" | bc -l`
area=`echo "scale=4; $lengthM * $breadthM *25 /4047" |bc -l` 
echo "$area is area in Acres"
