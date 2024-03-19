

#!/bin/bash


if [ $# -ne 1 ]; then
    echo "Usage: $0 <caracter>"
    exit 1
fi

caracter=$1

caminho=$(dirname "$0")/script_sample_folder

for diretorio in "$caminho"/*/; do
 
    if [[ "$diretorio" == *"$caracter"* ]]; then
        rm -r "$diretorio"/*
        echo "Conteúdo de $diretorio deletado."
    fi
done

