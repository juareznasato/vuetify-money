#!/bin/bash
#
######################################################################
#    FUNÇÃO SCRIPT.: COPIAR ARQUIVOS PARA O DIRETORIO npm            # 
#                    PUBLICAR COMPONENTE NO NPM                      #
#------------------------------------------------------------------- #
#                                                                    #
#       DESENVOLVIMENTO.: JUAREZ NASATO                              #
#       EMAIL.: JUAREZNASATO@GMAIL.COM                               #
#       DATA CRIACAO.: 11/05/2019                                    #
#       VERSAO.: 0.0.1                                               #
#                                                                    #
######################################################################
#
# --> COMANDOS <--
# $ npm login               logar no npm
# $ sh npm.sh -pk       pack
# $ sh npm.sh -pb       publish
#
echo "\033[1;36m  #    # #####  #    #       #####  #    # #####  \033[0m";
echo "\033[1;36m  ##   # #    # ##  ##       #    # #    # #    # \033[0m";
echo "\033[1;36m  # #  # #    # # ## #       #    # #    # #    # \033[0m";
echo "\033[1;36m  #  # # #####  # #  #  ###  #####  #    # #####  \033[0m";
echo "\033[1;36m  #   ## #      #    #       #      #    # #    # \033[0m";
echo "\033[1;36m  #    # #      #    #       #      #    # #    # \033[0m";
echo "\033[1;36m  #    # #      #    #       #      ###### #####  \033[0m";
echo
echo "npm login...";
npm login;
echo "Copiando arquivos...";
cp package.json npm;
cp README.md npm;
cp src/components/index.js npm;
cp src/components/VuetifyMoney.vue npm;
echo "Copiado.";
if [ $1 = "-pk" ];
then
    echo "Empacotando arquivos...";
    npm pack ./npm;
    echo "Empacotado.";
fi;

if [ $1 = "-pb" ];
then
    echo "Publicando no npm...";
    npm publish ./npm;
    echo "Publicado."
fi;
echo "Excluindo arquivos...";
rm npm/*
echo "Arquivos excluidos.";
echo "Fim.";

