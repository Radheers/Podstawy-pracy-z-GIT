#!/bin/bash

# Sprawdzanie, czy pierwszy argument to "--date"
if [ "$1" == "--date" ]; then
    # Wyświetlanie bieżącej daty i godziny
    echo $(date)
fi
