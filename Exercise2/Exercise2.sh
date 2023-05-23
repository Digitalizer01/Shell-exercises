echo "Introduzca el valor de N: "
read N

echo "Con repetición:"
shuf -r -i 0-9 -n${N-1}

echo "Sin repetición:"
shuf -i 0-9 -n${N-1}