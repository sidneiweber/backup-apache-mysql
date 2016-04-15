#!/bin/bash
DIA=`date +%A`
DATA=`date +%d-%m-%Y`

mysqldump -u root -pbolacha catalogo > /tmp/catalogo-"$DIA"-"$DATA".sql

# Compactar pasta
tar -zcvf /home/sidnei/MEGAsync/Branco/catalogo-"$DIA"-"$DATA".tar.gz /var/www/catalogo/ /tmp/catalogo-"$DIA"-"$DATA".sql

echo "Backup feito no dia $DATA" 

echo "Uso do disco"
df -Th
