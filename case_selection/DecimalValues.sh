echo "Enter a number less/equalto 9999:"
read num
case ${#num} in 
	4)

	case ${#num} in 
		4)
		temp=$((num%10))
		echo "$temp-unit"
		num=$((num/10))
			;;
	esac
	case ${#num} in 
		3)
		temp=$((num%10))
        	echo "$temp tenth"
        	num=$((num/10))
			;;
	esac
	case ${#num} in 
		2)
        	temp=$((num%10))
        	echo "$temp hundred"
        	num=$((num/10))
			;;
	esac
	case ${#num} in 
		1)
        	temp=$((num%10))
        	echo "$temp Thousand"
        	num=$((num/10))
			;;
	esac
	;;
	3)
	case ${#num} in 
		3)
        	temp=$((num%10))
        	echo "$temp unit"
        	num=$((num/10))
			;;
		esac
	case ${#num} in 
		2)
                temp=$((num%10))
                echo "$temp tenth"
                num=$((num/10))
			;;
	esac
	case ${#num} in 
		1)
                temp=$((num%10))
                echo "$temp hundred"
                num=$((num/10))
			;;
	esac
	;;
	2)
	case ${#num} in 
		2)
                temp=$((num%10))
                echo "$temp unit"
                num=$((num/10))
			;;
	esac
	case ${#num} in 

       		1)
                temp=$((num%10))
                echo "$temp tenth"
                num=$((num/10))
			;;
	esac
	;;
	1)
	echo "$num unit"
	;;
	*)
	echo "Out of range"
	;;
esac

