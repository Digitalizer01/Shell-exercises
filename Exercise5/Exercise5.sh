function mensaje()
{
    echo "Elija la opción que desee:"
    echo "1. Apartado a (número)."
    echo "2. Apartado b (número y crea fichero)."
    echo "3. Apartado c (número y guarda en fichero)."
    echo "4. Apartado d (comprueba si existe fichero en el sistema)."
    echo "5. Apartado e (pedir número y sumar desde 1 hasta el número pedido)."
}

clear
correcto=1
while [ $correcto -eq 1 ]
do
    mensaje
    read opcion
    case $opcion in
        1) echo -n "Introduzca una palabra: "
           read palabra
           echo -n "Introduzca un número: "
           read N
           for ((i=0;i<N;i++)) do
              echo $palabra
           done
        correcto=0;;
        2) echo -n "Introduzca una palabra: "
           read palabra
           echo -n "Introduzca un número: "
           read N
           echo -n > prueba.txt
           for ((i=0;i<N;i++)) do
              echo $palabra
              echo $palabra >> prueba.txt
           done
        correcto=0;;
        3) echo -n "Introduzca una palabra: "
           read palabra
           echo -n "Introduzca un número: "
           read N
           for ((i=0;i<N;i++)) do
              echo $palabra
              echo $palabra >> prueba.txt
           done
        correcto=0;;
        4) echo -n "Introduzca el nombre del fichero: "
           read fichero
           if [ -e $fichero ]
           then
                echo "El fichero $fichero existe."
           else
                echo "El fichero $fichero no existe."
           fi
        correcto=0;;
        5) echo -n "Introduzca un número: "
           read numero
           total=0
           for ((i=1;i<=numero;i++)) do
                total=$((total+i))
           done

           echo "Resultado de la operación: $total";
        correcto=0;;
        *) clear
        echo -e "Opción seleccionada incorrecta. \n"
        correcto=1;;
    esac
done

