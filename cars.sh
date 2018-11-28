#! /bin/bash
# cars.sh
# jack savage

echo "program start"
RUNNING=true

while $RUNNING; do 
	echo "1) Add a car"
	echo "2) List inventory cars"
	echo "Q) Quit program"

	read CHOICE
	
	case "$CHOICE" in 
		"1")
			echo "Year: "
			read YEAR
			echo "Make: "
			read MAKE
			echo "Model: "
			read MODEL
			
			ENTRY="$YEAR:$MAKE:$MODEL"
			echo "$ENTRY" >> My_old_cars.txt
			;;

		"2")
			cat My_old_cars.txt
			;;
		"Q")
			RUNNING=false
			echo "Goodbye!"
			;;

		*)
			echo "please enter a valid option"
			;;
		esac		
done 
