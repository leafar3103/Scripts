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
 arquivo_servidores="ServerLinux.txt"
 VERMELHO="\033[31;1m"
 VERDE="\033[32;1m"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
dos(){
    clear
    echo "-------------------------------- Verificação das Máquinas -------------------------------"
    echo "Verificação dos servidores Unix"
    echo
     while IFS=',' read -r endereco || [[ -n "$endereco" ]]
    do
    # Executar o ping para o endereço atual
    if ping -c 1 "$endereco" >/dev/null 2>&1; then
        echo -e "Ping para $endereco $VERDE bem-sucedido!\e[m:"
    else
        echo -e "Ping para $endereco  $VERMELHO falhou!\e[m:"
    fi

    done < "$arquivo_servidores"
    echo "-----------------------------------------------------------------------------------------"
    echo
    read -p "Pressione Enter para retornar ao menu..."
}
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
dos
# ------------------------------------------------------------------------ #
