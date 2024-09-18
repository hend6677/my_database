#!/bin/bash
read -p "Enter table name: " tablename
if [ ! -f "$tablename" ]; then
    read -p "Enter columns (comma-separated, e.g., id:int,name:string): " columns
    read -p "Enter primary key column: " primarykey
    echo "$columns" > "$tablename"
    echo "PRIMARY_KEY=$primarykey" >> "$tablename"
    echo "Table '$tablename' created successfully."
else
    echo "Table '$tablename' already exists."
fi

