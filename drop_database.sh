#!/bin/bash

read -p "Enter database name to drop: " dbname
if [ -d "$dbname" ]; then
    rm -r "$dbname"
    echo "Database '$dbname' dropped successfully."
else
    echo "Database '$dbname' does not exist."
fi

