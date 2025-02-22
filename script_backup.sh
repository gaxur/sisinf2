#!/bin/bash
BACKUP_DIR=~/backups
ODOO_DATABASE=GrupoB
ADMIN_PASSWORD=x6hg-m4ng-mt73 #Depende de la sesion

echo "Creando directorio de guardado de backup..."
mkdir -p ${BACKUP_DIR}

echo "Realizando backup de la base de datos: ${ODOO_DATABASE}"
curl -X POST \
    -F "master_pwd=${ADMIN_PASSWORD}" \
    -F "name=${ODOO_DATABASE}" \
    -F "backup_format=zip" \
    -o ${BACKUP_DIR}/${ODOO_DATABASE}.$(date +%F).zip \
    http://localhost:8069/web/database/backup

if [[ $? -eq 0 ]];then
	echo "Backup guardado con exito en el directorio: ${BACKUP_DIR}"
else
	echo "Se produjo un error en el proceso de backup"
fi


