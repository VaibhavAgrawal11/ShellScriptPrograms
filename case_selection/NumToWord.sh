#!/bin/bash -x
echo "Enter a Single digit Number"
read num
case $num in
	0)
	echo "Zero"
		;;
	1)
	echo "One"
		;;
	2)
        echo "Two"
		;;
	3)
        echo "Three"
		;;
	4)
        echo "Four"
		;;
	5)
        echo "Five"
		;;
	6)
        echo "six"
		;;
	7)
        echo "Seven"
		;;
	8)
        echo "Eight"
		;;
	9)
        echo "Nine";;
	*)
	echo "Invalid";;
esac
