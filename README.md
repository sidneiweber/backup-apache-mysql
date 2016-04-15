# Backup Apache Mysql
Script para fazer backup da pasta da aplicação do servidor apache e do banco de dados MYSQL

Colocar o script para rodar no Crontab (Aqui está rodando todo dia as 11:35)
35 11 * * * /opt/backup-servidor.sh >/dev/null 2>/dev/null
