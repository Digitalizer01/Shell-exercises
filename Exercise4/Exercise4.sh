if [ $# == 2 ]
then 
    echo "Suma: " $(($1+$2))
    echo "Resta: " $(($1-$2))
    echo "Multiplicación: " $(($1*$2))
    echo "División: " $(($1/$2))
else echo "Cantidad incorrecta de comandos."
fi