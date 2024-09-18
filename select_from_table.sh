#!/bin/bash
read -p "Enter table name: " tablename
if [ -f "$tablename" ]; then
    column_headers=$(head -n 1 "$tablename")
    echo "Columns: $column_headers"
    tail -n +2 "$tablename"
else
    echo "Table '$tablename' does not exist."
fi

