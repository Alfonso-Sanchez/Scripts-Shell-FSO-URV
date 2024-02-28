#! /bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -f $2 ]; then
    echo "Us: $0 <extensio> <carpeta desti>"
    exit 1
fi

arxius=$(find -type f -name "*.$1")

for arxiu in $arxius; do
    cp $arxiu $2
    echo "Copiat $arxiu a $2"
done
exit 0