#!/bin/bash -x
echo "Enter a number less/equalto 9999:"
read num
if((${#num}==4))
then

	if((${#num}==4))
	then
		temp=$((num%10))
		echo "$temp-unit"
		num=$((num/10))
	fi
	if((${#num}==3))
	then
		temp=$((num%10))
        	echo "$temp tenth"
        	num=$((num/10))
	fi
	if((${#num}==2))
	then
        	temp=$((num%10))
        	echo "$temp hundred"
        	num=$((num/10))
	fi
	if((${#num}==1))
	then
        	temp=$((num%10))
        	echo "$temp Thousand"
        	num=$((num/10))
	fi

elif((${#num}==3))
then
	if((${#num}==3))
	then
        	temp=$((num%10))
        	echo "$temp unit"
        	num=$((num/10))
	fi
	if((${#num}==2))
	then
                temp=$((num%10))
                echo "$temp tenth"
                num=$((num/10))
        fi
	if((${#num}==1))
	then
                temp=$((num%10))
                echo "$temp hundred"
                num=$((num/10))
        fi

elif((${#num}==2))
then
	if((${#num}==2))
	then
                temp=$((num%10))
                echo "$temp unit"
                num=$((num/10))
        fi
	if((${#num}==1))
	then
                temp=$((num%10))
                echo "$temp tenth"
                num=$((num/10))
        fi
elif((${#num}==1))
then
	echo "$num unit"
else
	echo "Out of range"
fi

