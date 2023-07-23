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
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
regex(){
    clear
    echo "--------------------------------------- Regex -------------------------------------------"
    echo "Identifique o Nome com Regex e receba a sua flag"
    echo
    cat users.txt
    echo "-----------------------------------------------------------------------------------------"
    sleep 2

    clear
    echo "--------------------------------------- Regex -------------------------------------------"
    flag=$(cat users.txt | egrep [A-Z]"(e)"[a-z]"(u)"[a-z?])
    echo -e "Sua flag é: ${VERMELHO} $flag \e[m"
    echo "-----------------------------------------------------------------------------------------"

    echo
    read -p "Pressione Enter para retornar ao menu..."

}
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
regex
# ------------------------------------------------------------------------ #
