#!/usr/bin/env bash
# File: guessinggame.sh

function adivina {
    cant_archivos=$(find $PWD -type f | wc -l)
    respuesta=0
	
    while [[ $respuesta =~ ^[0-9]+$ ]] && [[ $respuesta -ne $cant_archivos ]]
    do
	echo "Adivina la cantidad de archivos de la carpeta: "
	read respuesta

	if [[ $respuesta -gt $cant_archivos ]]
	then
	    echo "Hay menos archivos. Intenta de nuevo."

	elif [[ $respuesta -lt $cant_archivos  ]]
	then
 	    echo "Hay más archivos. Intenta de nuevo."
	
	else
	    echo "¡Has acertado, felicidades! :D"
      	fi
    done
}

adivina
