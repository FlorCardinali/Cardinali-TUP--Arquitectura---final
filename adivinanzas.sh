echo "Bienvenidos al juego de adivinar! "
nro_aleatorio=$(( $RANDOM % 50 + 1 ))
intentos=1
echo "intenta adivinar el numero,de 1 a 50"
read numero
while [[ $intentos -le 10 ]]
do
if [[ $intentos -lt 5 ]]
then
	if [[ $numero -eq $nro_aleatorio ]]
	then
		echo "ganaste en los primeros 5 intentos!!! increible!!"
		exit 0
	elif [[ $numero -lt $nro_aleatorio ]]
	then
		echo "nop, el numero es mayor"
		intentos=$(($intentos+1))
	elif [[ $numero -gt $nro_aleatorio ]]
	then
		echo "mop, el numero es menor"
		intentos=$(($intentos+1))
	fi
elif [[ $intentos -ge 5 && $intentos -lt 10 ]]
then
	if [[ $numero -eq $nro_aleatorio ]]
	then
                echo "ganaste!!! pero no fue tan increible..."
                exit 0
        elif [[ $numero -lt $nro_aleatorio ]]
	then
                echo "nop, el numero es mayor"
                intentos=$(($intentos+1))
        elif [[ $numero -gt $nro_aleatorio ]]
	then
                echo "mop, el numero es menor"
                intentos=$(($intentos+1))
        fi
elif [[ $intentos -ge 10 ]]
then
	echo "lo siento, te quedaste sin intentos"
	exit 0
fi
echo "intente adivinar el numero,de 1 a 50"
read numero
done
