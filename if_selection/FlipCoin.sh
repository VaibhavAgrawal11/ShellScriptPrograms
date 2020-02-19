#!/bin/bash -x
random=$(( RANDOM%2 ))
if(( $random == 1))
then
	echo "Heads"
else
	echo "Tails"
fi
