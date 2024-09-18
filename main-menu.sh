#!/bin/bash


while true ; do
	echo "Main menu:"
	echo "1. create Databases "
	echo "2. list Databases "
	echo "3. connect to database "
	echo "4. drop database "
	echo "5. Exit "

	read -p "Enter choice:" choice

	case $choice in
		1) bash create_database.sh ;;
		2) bash list_database.sh ;;
		3) bash connect_database.sh ;;
		4) bash drop_database.sh ;;
		5) exit ;;
		*) echo "INVALID CHOICE .PLEASE TRY AGAIN. " ;;

	esac

done
