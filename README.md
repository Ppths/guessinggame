#!/bin/bash

function get_file_count {
    ls -l | grep "^-" | wc -l
}

actual_count=$(get_file_count)

while true; do
    echo "¿Cuántos archivos hay en este directorio? Adivina: "
    read guess
    
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Error: Debes ingresar un número válido."
        continue
    fi
    
    if [ $guess -eq $actual_count ]; then
        echo "¡Correcto! ¡Felicidades!"
        exit 0
    elif [ $guess -lt $actual_count ]; then
        echo "Tu estimación es demasiado baja."
    else
        echo "Tu estimación es demasiado alta."
    fi
done
