#! /bin/bash
# cars.sh
# Isa Lee

num=0
while [ $num -ne 3 ]
do
	echo "Type 1 to enter a new car. Type 2 to display the list of cars. Type 3 to exit"
	read n
	case $n
	in 
		1) echo "Enter year: "
		read y
		echo "Enter make: "
		read ma
		echo "Enter model: "
		read mo
		car="${y}:${ma}:${mo}"
		echo "$car" >> My_old_cars.sh;;
		2) echo sort "$(<My_old_cars.sh)";;
		3) echo "Goodbye"
		num=3
	esac
done
