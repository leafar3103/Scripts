#!/usr/bin/env bash
#
# curl.sh - Modulo para o programa de automação de testes no ambiente DGO utilizando o Shell Script
#
# Site:       https://rafaeldeoliveiraferrreira.com.br
# Autor:      Rafael O Ferreira
# Manutenção: Rafael O Ferreira
#
# ------------------------------------------------------------------------ #
#  Este programa irá realizar uma verificação de logs em um arquivo para o time de seguranca
#
#  Exemplos:
#      $ ./main.sh
#      Neste exemplo o script será executado utilizando um menu para que seja realizado alguns testes automatizados para que possa ser validados os ambientes da DGO.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v0.01 25/05/2023, Rafael:
#       - Início do programa
#       - Conta com a funcionalidade Envio de Curl para teste em PATH
#   v0.01 31/05/2023, Rafael:
#       - Alterado parametro os paramentros para a coleta do PATH
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
read -p "Coloque a Url: " url
VERDE="\033[32;1m"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
natal(){
    clear
    echo "---------------------------------------------------- Curl URL ----------------------------------------------------------------"
    echo "Envio de uma requisição Curl em um path especifico DGO"
    echo
    # curl -s -v --location --request POST 'http://frstb.directvgo.com/STBOneClickApp-1.0/rest/stboneclickgo' \--header 'X-SI: SI-teste' \--header 'Content-Type: application/json' \--data-raw '{"iso2Code": "CO"}' 2> /dev/null
    
    #Validador URL
    # URL_LIST="urls.txt"
    # readarray URLS < ${URL_LIST}
    #     for URL in ${URLS[@]}
    # do
    #     RESPONSE="$(curl -s -I ${URL})"

    #     STATUS=$(echo $RESPONSE | grep "HTTP" | cut -d " " -f 2)

    #     if [[ ${STATUS} -eq "405" ]]
    #     then
    #         echo $URL [SUCESSO]
    #     fi
    # done
    echo "Testando a URL: $url"
    RESPONSE="$(curl -s -I POST $url \--header 'X-SI: SI-teste' | grep "HTTP" | cut -d " " -f 2)"
    echo -e "Response Code:$VERDE $RESPONSE\e[m"
    echo
    echo "------------------------------------------------------------------------------------------------------------------------------"
    echo
    read -p "Pressione Enter para retornar ao menu..."
}
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
natal
# ------------------------------------------------------------------------ #
