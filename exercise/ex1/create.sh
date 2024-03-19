#!/bin/bash


for diretorio in script_sample_folder/*; do

    if [ -d "$diretorio" ]; then
      
        nome_diretorio=$(basename "$diretorio")
       
        echo "script_sample_folder-$nome_diretorio" > "$diretorio/$nome_diretorio.txt"
    fi
done

