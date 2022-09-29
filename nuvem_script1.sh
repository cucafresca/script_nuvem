#!/bin/bash

echo "INSTALAÇÃO POSTGRESQL 10.16 Aperter ENTER para continuar"
read

mkdir -p /dados/cucafresca/cuca/postgresql/10/data
chmod -R 777 /dados/cucafresca/cuca/postgresql/10/data
chown -R postgres /dados/cucafresca/cuca/postgresql
chmod -R 0700 /dados/cucafresca/cuca/postgresql

cd /home

wget https://raw.githubusercontent.com/cucafresca/script_nuvem/main/iniciabanco.sh
wget https://raw.githubusercontent.com/cucafresca/script_nuvem/main/postgresql.service
                                                                                           
chmod +x iniciabanco.sh && chmod 777 iniciabanco.sh

mv iniciabanco.sh postgresql.service /etc/systemd/system

cd /etc/systemd/system/

systemctl daemon-reload

systemctl enable postgresql.service




