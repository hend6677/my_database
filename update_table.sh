#!/bin/bash
read -p "Enter table name: " tablename
if [ -f "$tablename" ]; then
    columns=$(head -n 1 "$tablename")
    primarykey=$(grep "PRIMARY_KEY" "$tablename" | cut -d'=' -f2)
    read -p "Enter primary key value to update: " pk_value

    if grep -q "^$pk_value:" "$tablename"; then
        IFS=',' read -ra col_array <<< "$columns"
        values=()
        for col in "${col_array[@]}"; do
            col_name=$(echo $col | cut -d':' -f1)
            col_type=$(echo $col | cut -d':' -f2)
            read -p "Enter new value for $col_name ($col_type): " value
            values+=("$value")
        done
        grep -v "^$pk_value:" "$tablename" > temp && mv temp "$tablename"
        echo "${values[*]}" >> "$tablename"
        echo "Record updated successfully."
    else
        echo "Error: No record with primary key '$pk_value' found."
    fi
else
    echo "Table '$tablename' does not exist."
fi

