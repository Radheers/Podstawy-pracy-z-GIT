#!/bin/bash

# Nazwa skryptu
script_name=$(basename $0)

# Sprawdzanie, czy pierwszy argument to "--date" lub "--logs"
if [ "$1" == "--date" ]; then
    # Wyświetlanie bieżącej daty i godziny
    echo $(date)
elif [ "$1" == "--logs" ]; then
    # Tworzenie 100 plików logx.txt
    for ((i=1; i<=100; i++)); do
        # Nazwa pliku
        file_name="log$i.txt"
        
        # Zapisywanie informacji do pliku
        echo "Nazwa pliku: $file_name" > $file_name
        echo "Nazwa skryptu: $script_name" >> $file_name
        echo "Data: $(date)" >> $file_name
    done
fi
