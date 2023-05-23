filas=10
columnas=10

declare -A matriz

for ((i = 0; i < $filas; i++)); do
    for ((j = 0; j < $columnas; j++)); do
        numero_aleatorio=$(shuf -i 0-9 -n${N-1})
        matriz[$i, $j]=$numero_aleatorio
    done
done

echo "Elementos de la matriz: " ${matriz[*]}

for ((i = 0; i < $filas; i++)); do
    for ((j = 0; j < $columnas; j++)); do
        echo "Posición $i,$j: " ${matriz[$i, $j]}
    done
done

echo
echo "Visualizar por filas:"

for ((i = 0; i < $filas; i++)); do
    for ((j = 0; j < $columnas; j++)); do
        echo "Fila $i: " ${matriz[$i, $j]} " "
    done
    echo "-------------"
done

echo
echo "Visualizar por columnas:"

for ((j = 0; j < $columnas; j++)); do
    for ((i = 0; i < $filas; i++)); do
        echo "Columna $j: " ${matriz[$i, $j]} " "
    done
    echo "-------------"
done

echo

for ((i = 0; i < $filas; i++)); do
    for ((j = 0; j < $columnas; j++)); do
        echo -n ${matriz[$i, $j]} " "
    done
    echo
done

echo

echo "Cantidad de elementos de la matriz: " ${#matriz[*]}
