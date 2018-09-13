#!/bin/sh

	zenity --question --title "Aviso" --text "essa opção irá apagar todos os seus contatos. Deseja continuar?" --ok-label="sim"  --cancel-label="não"


if [ $? -ne 1 ] ; then
rm lista.txt
touch lista.txt
zenity --info \
--text="Nova agenda criada."
else
zenity --info \
--text="lista mantida."
fi
./agenda.sh
