echo "Enter a number: "
read number
power=1
count=1
while [[ $count != $((number+2)) && $power -le 256 ]]
do
	echo $power
	power=$((power*2))
	((count++))
done
