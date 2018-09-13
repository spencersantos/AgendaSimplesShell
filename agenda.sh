
#!/bin/sh

MENU=$(zenity --list \
--title="Agenda de Contatos" \
--text="Selecione uma opção:" \
--radiolist \
--column="" --column="Opções:" --width=300 --height=400 \
FALSE "Adicionar Contato" \
FALSE "Listar Contato" \
FALSE "buscar Contato" \
FALSE "Nova lista de Contatos" \
TRUE "Sair")

case $MENU in
"Listar Contato")

 	./listar.sh

;;
"Adicionar Contato")

	./salvar.sh
;;

"buscar Contato")

	./buscar.sh
;;
"Nova lista de Contatos")

	./novaLista.sh
;;	
"Sair")

exit
;;
esac

