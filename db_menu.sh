#!/bin/bash



while true ; do
	echo "Database Menu:"
	echo "1.Create Table"
	echo "2.List Tables"
	echo "3.Drop Table"
	echo "4.Insert into Table"
	echo "5.Select from Table"
	echo "6.Delete From Table"
	echo "7.Update Table"
	echo "8.Back to main Menu "
	read -p "Enter choice:" choice 
	case $choice in 
		1)bash create_table.sh;;
		2)bash list_tables.sh;;
		3)bash drop_table.sh;;
		4)bash insert_into_table.sh;;
		5)bash select_from_table.sh;;
		6)bash delete_from_table.sh;;
		7)bash update_table.sh;;
		8)cd ..; break ;;
		*) echo "Invailed choice,please try again;" ;;
	esac
done
