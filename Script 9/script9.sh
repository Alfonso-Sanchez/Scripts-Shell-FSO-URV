#! /bin/bash

#Us: ./script.sh <paraula> fitxer

if [ -z $1 ] || [ -z $2 ] || [ ! -f $2 ]; then
    echo "Us: $0 <paraula> <fitxer>"
    exit 1
fi

cat $2 | grep "$1" -n # Opcio -n mostra el nombre de la linea que ha generat la coincidencia. 

