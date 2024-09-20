#! /bin/bash

read -p "Entre com a operação desejada: '1' para compactar ou '2' para descompactar: " operacao

case "$operacao" in
	"1")
		read -p "Nome do arquivo final (.tar.gz)" arquivo_saida
		read -p "Lista de arquivos separados por espaço:" arquivos
		tar czf "$arquivo_saida" $arquivos

		echo "Compactados com sucesso em $arquivo_saida"
	;;
	"2")
		read -p "Nome do arquivo a descompactar (.tar.gz): " arquivo
		read -p "Diretorio de destino: " diretorio
		tar -xzf "$arquivo" -C "$diretorio"
		echo "Descompactado com sucesso em $diretorio"
	;;
	*)
	echo "Operação invalida!"
	echo "Selecione descompactar ou compactar"
	exit 1
	;;
esac
