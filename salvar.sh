
#!/bin/sh

IFS="
"

zenity --forms --title="Adicione usuários" \
	--text="Entre com as informações" \
	--separator="$IFS" \
	--add-entry="nome" \
	--add-entry="telefone" >> ./lista.txt
       

case $? in
    0)
zenity --info \
        --text="Usuário adicionado com sucesso"
        ./agenda.sh
        ;;
    1)
	zenity --error \
	--text="Nenhum usuário adicionado."
        ./agenda.sh
	;;
esac

