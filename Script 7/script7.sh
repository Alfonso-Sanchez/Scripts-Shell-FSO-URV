#! /bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -f $1 ]; then
    echo "Us: $0 <directori relatiu .sh> <extensio>"
    exit 1
fi

cd $1
zip "$1_all_$2.zip" *.$2
exit 0
