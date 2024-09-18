#!/bin/bash
read -p "Enter table name: " tablename
if [ -f "$tablename" ]; then
    read -p "Enter primary key value to delete: " pk_value
    if grep -q "^$pk_value:" "$tablename"; then
        grep -v "^$pk_value:" "$tablename" > temp && mv temp "$tablename"
        echo "Record deleted successfully."
    else
        echo "Error: No record with primary key '$pk_value' found."
    fi
else
    echo "Table '$tablename' does not exist."
fi

