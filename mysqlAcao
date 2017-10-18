#!/bin/bash
echo "Qual ação deve ser executada? (start = s | stop = p | restart = r) " 
read resposta;
if [ $resposta == "s" ]; then
	sudo /etc/init.d/mysql start

elif [ $resposta == "p" ]; then
	sudo /etc/init.d/mysql stop

elif [ $resposta == "r" ]; then
	sudo /etc/init.d/mysql restart

else
	echo "========================================================================="
	echo "|---------------------------  É só s,p ou r!  --------------------------|"
	echo "|----------  Tenta denovo, ou aperte Ctrl + C para encerrar ;) ---------|"
	echo "========================================================================="
	sudo mysqlAcao
fi

