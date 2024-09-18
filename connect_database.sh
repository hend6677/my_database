#!/bin/bash
read -p "Enter database name to connect: " dbname
if [ -d "$dbname" ]; then
    cd "$dbname"
    bash db_menu.sh
else
    echo "Database '$dbname' does not exist."
fi

