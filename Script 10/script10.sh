echo "Llista Fitxers:" 
ls -l DadesTemperatura/* | grep "'"
echo "Quantitat trobada"
ls -l DadesTemperatura/* | grep "'" | wc -l
