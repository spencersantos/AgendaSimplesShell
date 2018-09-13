#!/bin/sh


IFS="
"
busca=$(zenity --entry --entry-text="buscar" --text="Infome o nome")

	lista=$(grep -A1 $busca ./lista.txt)
        zenity --list --title "Busca" --text " Resultado da Busca:" \
	--separator="$IFS" --column "Contato" --column "telefone" $lista

./agenda.sh
