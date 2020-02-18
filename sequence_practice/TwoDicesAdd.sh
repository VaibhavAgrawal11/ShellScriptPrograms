randomdice1=$((RANDOM%6 +1))
randomdice2=$((RANDOM%6 +1))
sum=$(( randomdice1+randomdice2))
echo "Two dice addition  $randomdice1+$randomdice2 is $sum"
