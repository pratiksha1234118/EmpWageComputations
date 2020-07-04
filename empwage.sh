echo "welcome to employee wage computation"
ispresent=1
randomCheck=$(( RANDOM % 2 ))
if [ $ispresent -eq $randomCheck ]
then
	echo " employee is present"
else
	echo "not present"
fi
