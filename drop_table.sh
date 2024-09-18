#!/bin/bash
read -p "Enter tablename to drop." tablename
if [ -f "$tablename"]; then
	rm "$tablename"
	echo "Table '$tablename' dropped successfully."
else
	echo "Table '$tablename' does not exists."
fi
