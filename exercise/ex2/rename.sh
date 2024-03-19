
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <prefixo>"
    exit 1
fi

prefixo=$1

caminho=$(dirname "$0")/script_sample_folder
					
if [ ! -d "$caminho" ]; then
    echo "Pasta script_sample_folder não encontrada."
    exit 1
fi

for diretorio in "$caminho"/*/; do
   
    nome_diretorio=$(basename "$diretorio")
 
    novo_nome="${prefixo}-${nome_diretorio}"
    mv "$diretorio" "$caminho/$novo_nome"
done

