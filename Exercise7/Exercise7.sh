echo -n "Introduce un directorio: "
read DIRECTORIO
echo -n "Introduce el nombre de un fichero: "
read FICHERO
echo -n "Introduce una palabra: "
read PALABRA

linea=$DIRECTORIO$FICHERO

cd /

resultado=$(grep -c "$PALABRA" "$linea")

if [ $resultado -eq 0 ]
then
    echo "La palabra no existe en el fichero."
else
    echo "La palabra existe en el fichero."
fi