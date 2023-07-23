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
#       - Conta com a funcionalidade testes nos servidores Linux
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
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
exibir_menu(){
    clear
    echo "------------------------------- Ferramentas Teste -----------------------------------------"
    echo " 
                 __      ___
                 \ \    / (_)
                  \ \  / / _  __ _ _ __  _ __   __ _
                   \ \/ / | |/ _  |  _ \|  _ \ / _  |
                    \  /  | | (_| | | | | | | | (_| |
                     \/   |_|\__,_|_| |_|_| |_|\__,_|


                     _____               _
                    |  __ \             | |
                    | |__) | __ ___   __| |_   _  ___ ___   ___  ___
                    |  ___/  __/ _ \ / _  | | | |/ __/ _ \ / _ \/ __|
                    | |   | | | (_) | (_| | |_| | (_| (_) |  __/\__ \/
                    |_|   |_|  \___/ \__,_|\__,_|\___\___/ \___||___/

-------------------------------------------------------------------------------------------"
    echo "Menu:"
    echo
    echo "1 - Health-Check(Ping)"
    echo "2 - Curl"
    echo "3 - Whois"
    echo "4 - Testador Path"
    echo "0 - Sair"
    echo
    echo "-------------------------------------------------------------------------------------------"
    read -p "Escolha uma opção " opcao
    
    

    case $opcao in
        1) source ping.sh;;
        2) source curl.sh;;
        3) source whois.sh;;
        4) source bot.sh;;
        0) exit ;;
        *)
    esac

    exibir_menu
}

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
exibir_menu
# ------------------------------------------------------------------------ #
