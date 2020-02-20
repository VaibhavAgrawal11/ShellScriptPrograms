#!/bin/bash -x
function isPalindrome() {
	value1=$1
	value2=$2
	reverse=0
	while(( $value1>0))
	do
		temp=$((value1%10))
		result=$((result*10+temp))
		value1=$((value1/10))
	done
	if(($reverse==$value2))
	then
		echo "Yes Palindrome"
	else
		echo "Not PalinDrome"
	fi

}
echo "Enter two numbers:"
read value1
read value2
result="$( isPalindrome $value1 $value2 )" 
echo $result
