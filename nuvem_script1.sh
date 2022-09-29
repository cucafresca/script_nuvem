#!/bin/bash

echo "INSTALAÇÃO POSTGRESQL 10.16 CUCA NUVEM Aperter ENTER para continuar"
read

mkdir -p /dados/cucafresca/cuca/postgresql/10/data
chmod -R 777 /dados/cucafresca/cuca/postgresql/10/data
chown -R postgres /dados/cucafresca/cuca/postgresql
chmod -R 0700 /dados/cucafresca/cuca/postgresql

wget #subir um nova pasta com DATA configurado
wget #mudar script postgresql.services com print
                                                                                           
chmod +x iniciabanco.sh && chmod 777 iniciabanco.sh

mv iniciabanco.sh postgresql.service /etc/systemd/system

cd /etc/systemd/system/

systemctl daemon-reload

systemctl enable postgresql.service




