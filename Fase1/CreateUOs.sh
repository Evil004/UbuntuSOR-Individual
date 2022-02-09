#!/bin/bash
echo -n "introduce el nombre del equipo: "
read var1
echo -n "introduce el dominio sin el sufijo: "
read var2
echo -n "introduce el sufijo: "
read var3

pathDomain=",DC=$var2,DC=$var3"



while IFS=. read -r col1 col2
do
        # Extraemos los campos de los usuarios
        pathUO="$col1$pathDomain"
        Description=$col2
        echo "I got:$pathUO|$Description"
        # Añadimos el usuario con samba-tool y lo añadimos a la Unidad Organizativa grupo que le corresponde
        echo  "Añadiendo UO $pathUO..."
        #Añade el usuario en la UO correspondiente
        samba-tool ou create "$pathUO"
        echo "[UO $pathUO creado correctamente]"

        echo "\n"
done <  $1
