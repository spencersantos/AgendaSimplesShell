#!/bin/sh


IFS="
"
lista=$(cat ./lista.txt) 
echo $lista
zenity --list --title "Agenda" --text " Lista de Contatos:" --separator="$IFS" --column="nome" --column="telefone" $lista
  
./agenda.sh
;;
