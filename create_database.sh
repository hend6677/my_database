#!/bin/bash
read -p "Enter database name: " dbname
if [ ! -d "$dbname" ]; then
    mkdir "$dbname"
    echo "Database '$dbname' created successfully."
else
    echo "Database '$dbname' already exists."
fi

