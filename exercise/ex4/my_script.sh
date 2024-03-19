

#!/bin/bash


if [ $# -gt 1 ];
then
    echo "Usage: $0 [true|false]"
    exit 1
fi

deletar_todos=$1


caminho=$(dirname "$0")/script_sample_folder


if [ "$deletar_todos" = "true" ] || [ $# -eq 0 ];
then
    rm -rf "$caminho"/*
    echo "Todos os diretórios em script_sample_folder foram deletados."
    exit 0
fi


for diretorio in "$caminho"/*/; do
    if [ -n "$(ls -A "$diretorio")" ];
    then
        rm -rf "$diretorio"
        echo "Conteúdo do diretório $diretorio foi deletado."
    fi
done

