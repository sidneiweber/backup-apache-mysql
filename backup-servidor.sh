#!/bin/bash
# Variaveis
DIA=`date +%A`
DATA=`date +%d-%m-%Y`

# Backup banco dados
mysqldump -u root -psenha catalogo > /tmp/catalogo-"$DIA"-"$DATA".sql

# Compactar pasta, junto com backup mysql
tar -zcvf /home/sidnei/MEGAsync/Branco/catalogo-"$DIA"-"$DATA".tar.gz /var/www/catalogo/ /tmp/catalogo-"$DIA"-"$DATA".sql

# Apagar arquivos com mais de sete dias
find /home/sidnei/MEGAsync/Branco/ ! -mtime -7 | /usr/bin/xargs rm -rf
