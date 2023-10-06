#!/bin/bash
numeroUno=$1
numeroDos=$3
symbole=$2
if [ "$#" -ne 3 ]
then
	echo "Mauvais"
exit 1
fi

if [[ ! "$symbole" = ["+-x/"] ]]
then
	echo "l'opérateur n'est pas bonne"
exit 1
fi

if [ "$symbole" = "x" ]
then
symbole=*
fi
resultats=$(($numeroUno $symbole $numeroDos))
echo "result: $resultats"

