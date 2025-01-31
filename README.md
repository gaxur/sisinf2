# Sisinf2

<h2>COMANDOS PARA BACKUP</h2>
(http://localhost:8069/web/database/manager)<br/>
docker ps<br/>
docker exec -t db pg_dump -U odoo -d postgres > backup.sql<br/>
zip db.zip backup.sql<br/>


<h2>COMANDOS DOCKER</h2>
docker compose down -v (elimina volumenes de datos)<br/>
docker compose stop (para docker)<br/>
docker compose up -d (levanta contenedores en segundo plano)<br/>
