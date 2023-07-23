#!/usr/bin/env bash
#
# ping.sh - Modulo para o programa de automação, envio de ping para um pool de servidores de um arquivo utilizando o Shell Script
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
#      Neste módulo do script será realizado um ping para uma lista de servidores em um arquivo de forma a testar se os servidores estão disponiveis na rede.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v0.01 25/05/2023, Rafael:
#       - Início do programa
#       - Conta com a funcionalidade de envio de ping para um pool de servidores incluidos nos arquivos base.
#   v0.01 31/05/2023, Rafael:
#       - Alterado parametro o parametro para envio da lista de servidores para que possam ser realizados os testes. 
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
read -p "Informe o Ip a ser consultado no Whois: " ip
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
verificacao(){
    clear
    echo "-------------------------------- Consulta de Ips Whois -----------------------------------"
    echo "Verificação do IP no Whois"
    echo
    whois -h whois.cymru.com " -v $ip"
    echo "-----------------------------------------------------------------------------------------"
    echo
    read -p "Pressione Enter para retornar ao menu..."
}
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
verificacao
# ------------------------------------------------------------------------ #
