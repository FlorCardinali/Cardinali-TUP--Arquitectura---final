echo "Buen dia, $USERNAME"
op=0
while [[ 5 -eq 5 ]]
do
	clear
	echo "1. Hora actual"
	echo "2. Clima actual"
	echo "3. Salir"
	read op
	clear
 	if [[ $op -eq 1 ]]
	then
		echo "La hora es $(date +%r)"
		echo "9. Volver"
		read op
		clear
	elif [[ $op -eq 2 ]]
	then
		curl  wttr.in/?0q
		echo "9. Volver"
		read op
		clear
	elif [[ $op -eq 3 ]]
	then
		exit 0
	fi
done


