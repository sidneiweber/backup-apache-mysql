#!/bin/bash
# Variaveis
DIA=`date +%A`
DATA=`date +%d-%m-%Y`

# Backup banco dados
mysqldump -u root -psenha catalogo > /tmp/catalogo-"$DIA"-"$DATA".sql

# Compactar pasta, junto com backup mysql
tar -zcvf /home/sidnei/MEGAsync/Branco/catalogo-"$DIA"-"$DATA".tar.gz /var/www/catalogo/ /tmp/catalogo-"$DIA"-"$DATA".sql
