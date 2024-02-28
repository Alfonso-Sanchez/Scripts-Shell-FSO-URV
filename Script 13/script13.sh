#! /bin/bash
if [ -z $1 ]; then
    echo "Us: $0 <file/dir>"
    exit 1
fi
realpath $1 #Ruta absoluta
exit 0
