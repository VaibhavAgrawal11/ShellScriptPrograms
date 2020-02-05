echo "Enter your name: "
read fname
#length = ${#fname}
if test ${#fname} -ge 3
then
 echo "Hello $fname, How Are you.."
else
 echo "Invalid Input"
fi
