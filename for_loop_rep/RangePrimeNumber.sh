echo "Enter a lower range"
read  low
echo "Enter upper range"
read upp



for((number=$low; number<=$upp; number++))
do
	flag=0

	if(($number==1))
	then
		flag=1
	fi

	for((iter=2; iter<=$((number/2)); iter++))
	do
		if(($((number%iter))==0))
		then
			flag=1
		fi
	done
	if(($flag==0))
	then
		echo $number
	fi
done
