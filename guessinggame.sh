#!/bin/bash

function contar_archivos {
    echo $(ls -1 | wc -l)
}

num_archivos=$(contar_archivos)

echo "Adivina cuántos archivos hay en el directorio actual."

while true; do
    read -p "Introduce tu respuesta: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Por favor, introduce un número válido."
        continue
    fi

    if [[ $guess -lt $num_archivos ]]; then
        echo "Demasiado bajo, intenta de nuevo."
    elif [[ $guess -gt $num_archivos ]]; then
        echo "Demasiado alto, intenta de nuevo."
    else
        echo "¡Felicidades! Has adivinado el número correcto: $num_archivos"
        break
    fi
done
