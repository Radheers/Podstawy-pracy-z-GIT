#!/bin/bash

# Nazwa skryptu
script_name=$(basename $0)

# Sprawdzanie, czy pierwszy argument to "--date" lub "--logs"
if [ "$1" == "--date" ]; then
    # Wyświetlanie bieżącej daty i godziny
    echo $(date)
elif [ "$1" == "--logs" ]; then
    # Sprawdzanie, czy podano drugi argument (liczbę plików)
    if [ -n "$2" ]; then
        num_files=$2
    else
        num_files=100
    fi

    # Tworzenie plików logx.txt
    for ((i=1; i<=num_files; i++)); do
        # Nazwa pliku
        file_name="log$i.txt"
        
        # Zapisywanie informacji do pliku
        echo "Nazwa pliku: $file_name" > $file_name
        echo "Nazwa skryptu: $script_name" >> $file_name
        echo "Data: $(date)" >> $file_name
    done
fi
