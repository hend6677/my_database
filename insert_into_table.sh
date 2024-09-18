#!/bin/bash
read -p "Enter table name: " tablename
if [ -f "$tablename" ]; then
    columns=$(head -n 1 "$tablename")
    primarykey=$(grep "PRIMARY_KEY" "$tablename" | cut -d'=' -f2)

    IFS=',' read -ra col_array <<< "$columns"
    values=()
    for col in "${col_array[@]}"; do
        col_name=$(echo $col | cut -d':' -f1)
        col_type=$(echo $col | cut -d':' -f2)
        read -p "Enter value for $col_name ($col_type): " value
        if [ "$col_name" = "$primarykey" ]; then
            if grep -q "^$value:" "$tablename"; then
                echo "Error: Primary key value '$value' already exists."
                exit 1
            fi
        fi
        values+=("$value")
    done
    echo "${values[*]}" >> "$tablename"
    echo "Record inserted successfully."
else
    echo "Table '$tablename' does not exist."
fi

