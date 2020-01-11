#!/usr/bin/env bash
# File: guessinggame.sh

function adivina {
echo "Introduce la ruta con la cual jugar:"
read ruta

[ -d $ruta ] && existe=1 || existe=0

if [[ existe -eq 1 ]]
then
    cant_archivos=$(ls $ruta | wc -l)
    respuesta=0

    while [[ $respuesta -ne $cant_archivos ]]
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

else
 echo "No existe la ruta. Terminando script." 

fi

}

adivina
