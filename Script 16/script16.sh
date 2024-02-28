
while IFS= read -r ciutat; do #While con un IFS que no interpreta los espacios en blanco como nuevas lineas.
    ciutatActual=$(echo "$ciutat" | cut -d '.' -f1)
    echo "Anys amb dades registrades en la ciutat > $ciutatActual"
    find DadesTemperatura/*/"$ciutat" | wc -l
done < <(../Script\ 15/./script15.sh DadesTemperatura)
