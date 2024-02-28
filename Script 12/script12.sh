#! /bin/bash
gener=0
febrer=0
marc=0
abril=0
maig=0
juny=0
juliol=0
agost=0
septembre=0
octubre=0
novembre=0
decembre=0

while IFS= read -r arxiu; do #While con un IFS que no interpreta los espacios en blanco como nuevas lineas.
    mesos=$(cat "$arxiu" | cut -f1)
    for mes in $mesos; do
        if [ "$mes" == "gen" ]; then
            gener=$((gener + 1))
        elif [ "$mes" == "feb" ]; then
            febrer=$((febrer + 1))
        elif [ "$mes" == "mar" ]; then
            marc=$((marc + 1))
        elif [ "$mes" == "abr" ]; then
            abril=$((abril + 1))
        elif [ "$mes" == "mai" ]; then
            maig=$((maig + 1))
        elif [ "$mes" == "jun" ]; then
            juny=$((juny + 1))
        elif [ "$mes" == "jul" ]; then
            juliol=$((juliol + 1))
        elif [ "$mes" == "ago" ]; then
            agost=$((agost + 1))
        elif [ "$mes" == "set" ]; then
            septembre=$((septembre + 1))
        elif [ "$mes" == "oct" ]; then
            octubre=$((octubre + 1))
        elif [ "$mes" == "nov" ]; then
            novembre=$((novembre + 1))
        elif [ "$mes" == "des" ]; then
            decembre=$((decembre + 1))
        fi
    done
done < <(find $1 -type f -name "* *" 2>/dev/null) # Enviamos el output del find al while loop y los errores al null de linux

echo "Cuantitat de mesures per mes: "
echo "Gener: $gener"
echo "Febrer: $febrer"
echo "Març: $marc"
echo "Abril: $abril"
echo "Juny: $juny"
echo "Juliol: $juliol"
echo "Agost: $agost"
echo "Septembre: $septembre"
echo "Octubre: $octubre"
echo "Novembre: $novembre"
echo "Decembre: $decembre"