echo "welcome to employee wage computation"
#uc1
Attendence=$(( $RANDOM % 2 + 1 ))
if [ $Attendence -eq 1 ]
then
employ="Present"
echo $employ
else
employ="Absent"
echo $employ
fi

#uc2
if [ "$employ" == "Present" ]
then
Employwageperhour=20
worktime=8
dailyemploywage=$(($Employwageperhour * $worktime))
echo $dailyemploywage
else
dailyemploywage=0
echo $dailyemploywage
fi

#uc3
if [ "$employ" == "Present" ]
then
Employwageperhour=20
worktime=8
read -p "Enter the Employ name : " name
partime=$(($worktime/2))
parttimeemploywage=$(($Employwageperhour * $partime))
echo "Wage of $name who does part time is : " $parttimeemploywage
else
parttimeemploywage=0
echo "Wage of $name who does part time is : "$parttimeemploywage
fi



#uc4
#uc5
if [ "$employ" == "Present" ]
then
echo "1.Wages of the employ who does full time"
echo "2.Wages of the employ who does part time"
echo "3.Exit"
read -p "Enter your choice from above statements : " ch

case $ch in
"1")
	
	if [ "$employ" == "Present" ]
	then	
	Employwageperhour=20
	worktime=8
	dailyemploywage=$(($Employwageperhour*$worktime))
	echo "Wage of $name for full time is : "$dailyemploywage
	else
	echo "The employ $name is : " $employ 
	fi
;;

"2")
	
	
	if [ "$employ" == "Present" ]
	then	
	partworktime=$(($worktime/2))
	parttimeemploywage=$(($Employwageperhour*$partworktime))
	echo "Wage of $name for part time is : "$parttimeemploywage
	else
	echo "The employ $name is : "$employ
	fi 
;;

"3")
break
;;

*) 
echo invalid choice 
;;

esac
else
wage=0
echo "Wage of $name is : "$wage
fi

WorkingDaysofMonth=20
wagesofamonth=$(($dailyemploywage*$WorkingDaysofMonth))
echo "Wages Per Month of $name is : " $wagesofamonth


#uc6
read -p "Enter the name of the new employ to check the wages : " newname
read -p "Enter the hours you work : " time
newworktime=0
wages=0
days=0
hoursleft=0
dailyemploywages=160
Employwageperhours=20
i=1
while [ $newworktime -lt $time ]
do
newworktime=$(($newworktime+1))
if [ $(($newworktime%8)) -eq 0 ]
then
days=$(($days+1))
wages=$(($wages+$dailyemploywages))
fi
done
hoursleft=$(($newworktime%8))
totalwages=$((($hoursleft * $Employwageperhours) + $wages))
echo "Total wages of $newname is : $totalwages "
echo "The days and hours work done is : $days days and $hoursleft hours "

#uc7
dailyemploywage()
{
Employwageperhour=20
dailyemploywage=$(($Employwageperhour * $hourss))
}
parttimeemploywage()
{
Employwageperhour=20
partime=$(($hourss/2))
parttimeemploywage=$(($Employwageperhour * $partime))
}
checkifAvailable() 
{
person=$(($RANDOM%3+1))
if [ $person -eq 1 ]
then
dailyemploywage
employ=$dailyemploywage
elif [ $person -eq 2 ]
then
parttimeemploywage
employ=$parttimeemploywage
elif [ $person -eq 3 ]
then
employ=0
fi
}


