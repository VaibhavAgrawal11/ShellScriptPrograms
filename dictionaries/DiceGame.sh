#!/bin/bash -x 
echo "Welcome to Dice game"
#VARIABLES
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
maximum=0
minimum=11
declare -A diceGame
#LOOP WILL RUN UNTIL ANY OF THE DIE NUMBER COUNT REACHES 10
while((count1<10 && count2<10 && count3<10 && count4 <10 && count5<10 && count6<10))
do
	random=$((RANDOM%6+1))
	case $random in
		1)
		count1=$((count1+1))
		diceGame[1]="$count1"
		echo "$random : $count1"
		;;
		2)
                count2=$((count2+1))
                diceGame[2]="$count2"
                echo "$random : $count2"
                ;;
		3)
                count3=$((count3+1))
                diceGame[3]="$count3"
                echo "$random : $count3"
                ;;
		4)
                count4=$((count4+1))
                diceGame[4]="$count4"
                echo "$random : $count4"
                ;;
		5)
                count5=$((count5+1))
                diceGame[5]="$count5"
                echo "$random : $count5"
                ;;
		6)
                count6=$((count6+1))
                diceGame[6]="$count6"
                echo "$random : $count6"
                ;;
	esac
done
echo "${!diceGame[@]} : ${diceGame[@]}"
#RUN A LOOP TO GET MAXIMUM AND MINIMUM COUNT NUMBER APPEARED
for((iter=1; iter<=6; iter++))
do
	if((${diceGame[$iter]} > $maximum))
	then
		maximum=${diceGame[$iter]}
		diceNum1=$iter
	fi
	if((${diceGame[$iter]}<$minimum))
        then
                minimum=${diceGame[$iter]}
		diceNum2=$iter
        fi
done
echo "Maximum   $diceNum1 : $maximum"
echo "Minimum   $diceNum2 : $minimum"
