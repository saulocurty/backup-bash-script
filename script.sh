#!/bin/bash

##Vamos assumir que o usuário so pode enviar uma flag 
[ "$#" -eq 0 ] && { echo "Nenhum parametro passado"; exit 1; }

f="$#"
for element in "$@"; do
  
  if [ -d "$element" ] || [ "--" == "$element"* ]; then
    rsync -av --delete $element/ /media/saulo/saulo
  else 
    echo "Error, $element não é um subdiretório do diretório atual"
    exit 1
  fi

done
























