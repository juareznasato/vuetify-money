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
#       VERSAO.: 0.0.1                      					     #
#        		                                                     #
######################################################################
#
# --> COMANDOS:
# $ npm login
# $ sh npm-pub.sh -pk       pack
# $ sh npm-pub.sh -pb       publish
echo "\033[1;36m  #    # #####  #    #       #####  #    # #####  \033[0m";
echo "\033[1;36m  ##   # #    # ##  ##       #    # #    # #    # \033[0m";
echo "\033[1;36m  # #  # #    # # ## #       #    # #    # #    # \033[0m";
echo "\033[1;36m  #  # # #####  # #  #  ###  #####  #    # #####  \033[0m";
echo "\033[1;36m  #   ## #      #    #       #      #    # #    # \033[0m";
echo "\033[1;36m  #    # #      #    #       #      #    # #    # \033[0m";
echo "\033[1;36m  #    # #      #    #       #      ###### #####  \033[0m";
echo
echo "Iníciando cópia de arquivos e publicação NPM.";
echo
cp package.json npm;
cp README.md npm;
cp src/components/VuetifyMoney.vue npm;
if [ $1 = "-pk" ];
then
    echo "Empacotando...";
    npm pack ./npm;
fi;

if [ $1 = "-pb" ];
then
    echo "Publicando...";
    npm publish ./npm;
fi;
echo "Fim.";

