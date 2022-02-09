#!/bin/bash

while IFS=: read -r Name FirstName LastName account Dni Delegation Departament Computer Enabled Password TurnPassDays Change email Shell PathUser
do
        echo $Name
	pathUO="$PathUser"
        # Extraemos los campos de los usuarios
        echo "Crando a $account en $pathUO"

        samba-tool user create $account $Password --must-change-at-next-login --userou="$pathUO" --home-directory="/home/$account" --given-name="$Name" --surname="$FirstName $LastName" --mail="$email" --department="$Departament" --login-shell="$Shell"
        


        echo "\n"
done <  $1
