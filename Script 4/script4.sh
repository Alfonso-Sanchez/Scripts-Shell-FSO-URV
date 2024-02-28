#! /bin/bash

echo "Introdueix un numero: " 
read numero

while [ $numero -ne 0 ]; do
    
    modulo=$((numero % 2))
    if [ $modulo -eq 0 ]; then
        echo "Es parell"
    else
        echo "Es senar"
    fi

    echo "Introdueix un numero: " 
    read numero

done
exit 0

