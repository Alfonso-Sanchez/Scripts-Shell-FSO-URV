#! /bin/bash
if [ -z $1 ]; then
    echo "Us: $0 [fixer]"
    exit 1
elif  [ -d $1 ]; then
    echo "Error, no pot ser un directori! Us: $0 [fitxer]"
    exit 2
else
    #Trobem el arxiu, pero no donem output, sols guardem a la variable.
    trobat=$(find $1 -type f 2>/dev/null)

    if [ -z "$trobat" ]; then
    echo "No existeix el arxiu $1"
    else 
        echo "Existeix el arxiu $1"
    fi
    exit 0
fi


