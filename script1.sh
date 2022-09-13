#!/bin/bash

##Vamos assumir que o usuário so pode enviar uma flag 
[ "$#" -eq 0 ] && { echo "Nenhum parametro passado"; exit 1; }
dest="/media/saulo/saulo"
f="$#"
string=""
for element in "$@"; do
  
  if [ -d "$element" ]; then
    string+=" $element/"
  else 
    echo "Error, $element não é um subdiretório do diretório atual"
    exit 1
  fi

done
rsync -av $string $dest --delete
echo "string é = $string"























