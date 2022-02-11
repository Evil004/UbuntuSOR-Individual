#!/bin/bash

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
