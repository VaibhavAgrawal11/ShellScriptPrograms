#!/bin/bash -x
echo "Welcome to find common birthdate"
declare -A birthMonth
for((person=1; person<=50; person++))
do
	echo "Enter your birth month"
	read month
	echo "Enter your name"
	read name
	case $month in
		1)
		nameArray1[$count1]=$name
		count1=$((count1+1)) 
		birthMonth[$month]=${nameArray1[@]}
		;;
		2) 
                nameArray2[$count2]=$name 
                count2=$((count2+1)) 
                birthMonth[$month]=${nameArray2[@]}
                ;;
		3) 
                nameArray3[$count3]=$name 
                count3=$((count3+1)) 
                birthMonth[$month]=${nameArray3[@]}
                ;;
		4) 
                nameArray4[$count4]=$name 
                count4=$((count4+1)) 
                birthMonth[$month]=${nameArray4[@]}
                ;;
		5) 
                nameArray5[$count5]=$name 
                count5=$((count5+1)) 
                birthMonth[$month]=${nameArray5[@]}
                ;;
		6) 
                nameArray6[$count6]=$name 
                count6=$((count6+1)) 
                birthMonth[$month]=${nameArray6[@]}
                ;;
		7) 
                nameArray7[$count7]=$name 
                count7=$((count7+1)) 
                birthMonth[$month]=${nameArray7[@]}
                ;;
		8) 
                nameArray1[$count8]=$name 
                count8=$((count8+1)) 
                birthMonth[$month]=${nameArray8[@]}
                ;;
		9) 
                nameArray1[$count9]=$name 
                count9=$((count9+1)) 
                birthMonth[$month]=${nameArray9[@]}
                ;;
		10) 
                nameArray10[$count10]=$name 
                count10=$((count10+1)) 
                birthMonth[$month]=${nameArray10[@]}
                ;;
		11) 
                nameArray11[$count11]=$name 
                count11=$((count11+1)) 
                birthMonth[$month]=${nameArray11[@]}
                ;;
		1) 
                nameArray12[$count12]=$name 
                count12=$((count12+1)) 
                birthMonth[$month]=${nameArray12[@]}
                ;;

	esac
done
for ((month=1; month<=12; month++))
do
	echo "$month : ${birthMonth[$month]}"
done
