echo "Enter Three numbers:"
read num1
read num2
read num3
#sol1=$(( $(( num1 +  num2 )) * num3 ))

echo "scale=2 ;  $num1 + $num2 * $num3" | bc
echo "scale=2 ;  $num1 % $num2 + $num3" | bc -l
echo "scale=2 ;  $num3 + $num1 / $num2" | bc
echo "scale=2 ;  $num1 * $num2 + $num3" | bc
