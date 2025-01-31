# Sisinf2

<h2>COMANDOS PARA BACKUP</h2>
(http://localhost:8069/web/database/manager)
docker ps
docker exec -t db pg_dump -U odoo -d postgres > backup.sql
zip db.zip backup.sql


<h2>COMANDOS DOCKER</h2>
docker compose down -v (elimina volumenes de datos)
docker compose stop (para docker)
docker compose up -d (levanta contenedores en segundo plano)
