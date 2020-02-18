day=$1
month=$2
if (( $month==03 && $day>=20 && $day<=31))
then
	echo "true"
elif (( (( $month==04 && $day>=1 && $day<=30 )) || (( $month==05 && $day>=1 && $day<=31 )) ))
then
	echo "true"
elif(( $month==06 && $day>=1 && $day<=20 ))
then
	echo "true"
else
	echo "false"
fi
