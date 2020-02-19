#!/bin/bash -x
echo "Enter Num between 1 to 4"
read num
case $num in
	1)
	echo "Conversion of Feet into Inch"
	echo "Enter feet: "
	read feet
	inch=$((feet*12))
	echo "Inches: $inch";;
	2)
	echo "Conversion Inch to Feet"
        echo "Enter inches: "
        read inch
        feet=$((inch/12))
        echo "feet: $feet";;
	3)
	echo "Conversion of Feet into Meter"
        echo "Enter feet: "
        read feet
        meter=`echo "scale=3 ; $feet/3.218" | bc -l`
        echo "Meters : $meter";;
	4)
	echo "Conversion of Meter into Feet"
        echo "Enter Meters: "
        read meter
        feet=`echo "scale=3; $meter*3.218" | bc`
        echo "Feet: $feet";;
esac
