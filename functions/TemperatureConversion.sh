#!/bin/bash -x
function convertCelciusToFahrenhiet() {
   celcius=$1
   fahrenheit=`echo "scale=4; $celcius*9/12+32" | bc`
   echo $fahrenheit
}
function convertFahrenhietToCelcius() {
   fahrenheit=$1
   celcius=`echo "scale=4; $((fahrenheit-32)) * 5/9" | bc`
   echo $celcius
}

echo "Enter 1: Celcius to Fahrenheit"
echo "2: Fahrenhiet to Celcius"
read option
case $option in
	1)
	echo "Enter temperature in celcius"
	read celcius
	if(( $celcius>=0 && $celcius<=100))
	then
		fahrenhiet="$( convertCelciusToFahrenhiet $celcius )"
	else
		echo "Invalid Entry"
	fi
	echo "Fahrenhiet: $fahrenhiet"
	;;
	2)
	echo "Enter temperature in Fahrenhite"
   read fahrenhiet
   if(( $fahrenhiet>=32 && $fahrenhiet<=212))
   then
      celcius="$(convertFahrenhietToCelcius $fahrenhiet)"
   else
      echo "Invalid Entry"
   fi
   echo "Celcius: $celcius"

	;;
	*)echo "Invalid Entry"
	;;
esac

