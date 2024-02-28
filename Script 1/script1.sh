#! /bin/bash


if [ -f $1 ]; then
    echo "Us: $0 [carpeta]"
    exit 1
fi

fixers=$(find $1 -type f)
counter=0
for fitxer in $fixers; do
    counter=$((counter+1))
done

echo "Quantitat de fit en dir $1: $counter"
exit 0