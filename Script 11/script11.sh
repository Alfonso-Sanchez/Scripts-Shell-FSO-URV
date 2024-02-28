#! /bin/bash

if [ -z $1 ] || [ -z $2 ] || [ ! -d $1 ] || [ ! -d $2 ]; then
    echo "Us: $0 <directori temp> <directori desti>"
    exit 1
fi

while IFS= read -r arxiu; do #While con un IFS que no interpreta los espacios en blanco como nuevas lineas.
    any=$(echo "$arxiu" | cut -d '/' -f2)
    if [ ! -d $2/$any ]; then #Si el directorio no existe, crealo!
        mkdir $2/$any
    fi
    cp "$arxiu" $2/$any
done < <(find $1 -type f -name "* *" 2>/dev/null) # Enviamos el output del find al while loop y los errores al null de linux

exit 0
