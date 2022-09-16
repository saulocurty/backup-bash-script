#!/bin/bash

##Vamos assumir que o usuário so pode enviar uma flag 
[ "$#" -eq 0 ] && { echo "Nenhum parametro passado"; exit 1; }
dest="/media/saulo/saulo"

string=""
for element in "$@"; do
  
  if [ -d $element ] ; then
    string+=" $element/"
    continue
  else 
    echo "Error, $element não é um subdiretório do diretório atual ou não é uma flag válida"
    exit 2
  fi
  

done
rsync -avb $string $dest --backup-dir="$(pwd)/backup" --delete
echo "string é = $string"























