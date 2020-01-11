
all: README.md

README.md: 
	echo "#Guessing Game" > README.md
	echo "##Juego de adivinar" >> README.md
	echo -n "Fecha de creación: "  >> README.md
	date >> README.md
	echo -n "Número de líneas del script/juego: " >> README.md 
	wc -l guessinggame.sh | cut -f1 -d' ' >> README.md
	echo "![Mystery box](https://image.shutterstock.com/image-vector/mystery-box-random-loot-flat-260nw-1469820695.jpg)" >> README.md

clean:
	rm -iv README.md
