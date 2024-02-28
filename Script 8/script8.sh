#! /bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ] || [ -f $1 ]; then
    echo "Us: $0 <dir> <extensio> <nom>"
    exit 1
fi

cd $1
fitxers=$(find -type f -name "*.$2" 2>/dev/null)
count=0
for fitxer in $fitxers; do
    mv $fitxer $3_$count.$2
    count=$((count + 1))
done
exit 0
