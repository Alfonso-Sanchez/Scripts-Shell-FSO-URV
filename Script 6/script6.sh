#! /bin/bash

if [ -z $1 ] || [ -f $1 ] || [ -z $2 ]; then
    echo "Us: $0 <directori relatiu a .sh> <extensio>"
    exit 1
fi
cd $1
fitxers=$(find -type f -name "*.$2" 2>/dev/null | wc -l)
echo "$fitxers"
