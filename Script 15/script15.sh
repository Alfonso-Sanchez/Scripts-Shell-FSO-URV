if [ -z $1 ] || [ ! -d $1 ]; then
    echo "Us: $0 <dir dadestemp>"
    exit 1
fi

find $1 -type f -name "* *" 2>/dev/null | cut -d '/' -f3 | sort -u
exit 0
