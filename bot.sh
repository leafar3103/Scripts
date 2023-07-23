#!/usr/bin/env bash
#
# cabecalho.sh - Modelo de cabeçalho para Shell Script
#
# Site:       https://rafaeldeoliveiraferrreira.com.br
# Autor:      Rafael O Ferreira
# Manutenção: Rafael O Ferreira
#
# ------------------------------------------------------------------------ #
#  Este programa irá realizar uma verificação de logs em um arquivo para o time de seguranca
#
#  Exemplos:
#      $ ./cotarBitcoin.sh -d 1
#      Neste exemplo o script será executado no modo debug nível 1.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v0.01 25/05/2023, Rafael:
#       - Início do programa
#       - Conta com a funcionalidade X
#   v0.01 26/05/2023, Rafael:
#       - Alterado parametro XXXXX
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.2.2
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	Joãozinho - Encontrou um bug na parte de login.
#	  Mariazinha - Enviou uma sugestão de adicionar o -h.
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
VERMELHO="\033[31;1m"
VERDE="\033[32;1m"
read -p "Informe a quantidade de requisição: " total
read -p "Coloque a Url: " url

# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
bot(){
    clear
    echo "------------------------------------------------ Testador Automatizado Path----------------------------------------------------"
    echo "Bot Curl DGO"
    echo
        echo Quantidade de requisições enviadas: $total    
        echo

        echo "Testando a url: $url"
        echo

        for ((i=1; i<=$total; i++)); do

            response=$(curl -s -o /dev/null -w "%{http_code}" $url \--header 'X-SI: SI-teste')
        
            if [[ $response -eq 200 ]]; then

                ((count_200++))

            elif [[ $response -eq 403 ]]; then

                ((count_403++))
            
            elif [[ $response -eq 400 ]]; then

                ((count_400++))

            elif [[ $response -eq 404 ]]; then

                ((count_404++))

            elif [[ $response -eq 500 ]]; then

                ((count_500++))
            
            fi

            progress=$((100 * i / $total))

            bar="["

            for ((j=0; j<=progress/10; j++)); do

                bar+="="

            done

            for ((j=progress/10+1; j<=10; j++)); do

                bar+=" "

            done

            bar+="]"



                echo -ne "Progresso: $progress% $bar\r"
                

            done

        echo
        echo

        echo -e "Quantidade de requisições com o códigos $VERDE 200\e[m: $count_200"
        echo "Quantidade de requisições com o códigos  400: $count_400"
        echo -e "Quantidade de requisições com o códigos $VERMELHO 403\e[m: $count_403"
        echo -e "Quantidade de requisições com o códigos $VERMELHO 404\e[m: $count_404"
        echo "Quantidade de requisições com o códigos  500: $count_500"
        echo
    echo
    echo "------------------------------------------------------------------------------------------------------------------------------"
    echo
    read -p "Pressione Enter para retornar ao menu..."
}
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
bot
# ------------------------------------------------------------------------ #
