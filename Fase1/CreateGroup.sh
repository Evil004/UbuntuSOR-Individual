#!/bin/bash

while IFS=: read -r Name PathUO Category Scope
do

        # Extraemos los campos de los usuarios
        echo "Crando el equipo $Name"

	samba-tool group add $Name --group-type=$Category --group-scope=$Scope --groupou="$PathUO"

	echo "$PatUO"
        echo "\n"
done <  $1
