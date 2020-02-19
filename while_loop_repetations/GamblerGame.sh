#!/bin/bash -x
echo "Welcome to Gambler's Game:"
stake=100
goal=200
win=0
loss=0
while (($stake<=$goal && $stake >0))
do
	random=$((RANDOM%2))
	if(($random==1))
	then
		echo "You won stake: $stake"
		stake=$((stake+1))
		((win++))
	else
		echo "You loss stake: $stake"
		stake=$((stake-1))
		((loss++))
	fi
done

if(($stake==0))
then
	echo "Sorry, You are broke!"
fi
echo "Wins: $win"
echo "Loss: $loss"
