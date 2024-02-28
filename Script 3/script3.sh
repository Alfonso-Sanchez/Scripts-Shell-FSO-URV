#! /bin/bash
if [ -z $1 ]; then
    echo "Us: $0 [fixer]"
    exit 1
else
    #Trobem el arxiu, pero no donem output, sols guardem a la variable.
    trobat=$(find -type f -name "pepe" 2>/dev/null)
    contador=$(echo "$trobat" | grep -v '^$' | wc -l) #Contamos todas las lineas no blancas! Ya que si el resultado es 0, cuenta como 1 resultado, y no lo queremos.
    if [ $contador -eq 0 ]; then
        echo "No se ha trobat cap arxiu amb el nom $1"
    else
        echo "Se han trobat $contador arxiu/s en les seguents rutes relatives al .sh"
        for cadena in $trobat; do
            echo "$cadena"
        done
    fi
fi