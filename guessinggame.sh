#!/usr/bin/env bash
# File: guessinggame.sh

function adivina {
    cant_archivos=$(find -type f $PWD | wc -l)
    
    echo "Adivina la cantidad de archivos de la carpeta: "
    read respuesta
	
    while [[ $respuesta =~ ^[0-9]+$ ]] && [[ $respuesta -ne $cant_archivos ]]
    do
	if [[ $respuesta -gt $cant_archivos ]]
	then
	    echo "Hay menos archivos. Intenta de nuevo."

	elif [[ $respuesta -lt $cant_archivos  ]]
	then
 	    echo "Hay más archivos. Intenta de nuevo."
	
	else
	    echo "¡Has acertado, felicidades! :D"
	fi

	echo "Adivina la cantidad de archivos de la carpeta: "
        read respuesta
    done
}

adivina
