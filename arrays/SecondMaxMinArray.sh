
#!/bin/bash -x
#VARIABLES
bigNumber1=0
bigNumber2=0
smallNumber1=1000
smallNumber2=1000
for(( iter=0; iter<10; iter++))
do
	random=$((RANDOM%900+100))
	arr[$iter]=$random
done
echo ${arr[@]}
#LOOP UNTIL MAXIMUM AND MINIMUM NUMBER IS FOUND
for((iter=0; iter<10; iter++))
do
	if((${arr[iter]}>$bigNumber1))
	then
		bigNumber2=$bigNumber1
		bigNumber1=${arr[iter]}
	fi
	if((${arr[iter]}<$smallNumber1))
        then
                smallNumber2=$smallNumber1
                smallNumber1=${arr[iter]}
        fi
done
#LOOP UNTIL 2ND MAXIMUM AND 2ND MINIMUM NUMBER IS FOUND
for((iter=0; iter<10; iter++))
do
	if((${arr[iter]}>$bigNumber2 && ${arr[iter]}<$bigNumber1))
	then
		bigNumber2=${arr[iter]}
	fi
	if((${arr[iter]}<$smallNumber2 && ${arr[iter]}>$smallNumber1))
        then
                smallNumber2=${arr[iter]}
        fi
done
echo "Second Largest Number: $bigNumber2"
echo "Second Smallest Number: $smallNumber2"
