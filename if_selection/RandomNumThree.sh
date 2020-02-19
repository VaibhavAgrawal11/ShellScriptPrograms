#!/bin/bash -x
arr=[5]
max=0
min=1000

random1=$(( (( RANDOM%900))+100 ))
random2=$(( (( RANDOM%900))+100 ))
random3=$(( (( RANDOM%900))+100 ))
random4=$(( (( RANDOM%900))+100 ))
random5=$(( (( RANDOM%900))+100 ))
echo $random1 $random2 $random3 $random4 $random5 
	
if(( $random1 > $max ))
then
	max=$random1
fi
if(( $random2 > $max ))
then
        max=$random2
fi
if(( $random3 > $max ))
then
        max=$random3
fi
if(( $random4 > $max ))
then
        max=$random4
fi
if(( $random5 > $max ))
then
        max=$random5
fi

if(( $random1 < $min ))
then
        min=$random1
fi
if(( $random2 < $min ))
then
        min=$random2
fi
if(( $random3 < $min ))
then
        min=$random3
fi
if(( $random4 < $min ))
then
        min=$random4
fi
if(( $random5 < $min ))
then
        min=$random5
fi

echo "Maximum is $max"
echo "Minimum is $min"
