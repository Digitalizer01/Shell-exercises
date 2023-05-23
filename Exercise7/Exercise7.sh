correcto=1
while [ $correcto -eq 1 ]
do
    echo -n "Introduzca una palabra: "
    read palabra
    
    case $palabra in
        ":q") correcto=0;;
        *) echo -n "Introduzca un número: "
            read numero
            echo "$palabra"":""$numero" >> fichero.txt
            correcto=1;;
    esac
done