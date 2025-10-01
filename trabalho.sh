#!/bin/bash
addgroup --gid 1000 aluno
addgroup --gid 1001 professor
addgroup --gid 1002 gerente

sudo mkdir -p /srv
sudo chown root:gerente /srv

sudo mkdir -p /srv/alunos
sudo mkdir -p /srv/professores

sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores

sudo chmod 751 /srv   
sudo chmod 770 /srv/alunos 
sudo chmod 770 /srv/professores 

sudo adduser --home /srv/professores/bruno --ingroup professor --gecos "" --disabled-login bruno
sudo usermod -aG gerente bruno
sudo chown bruno:professor /srv/professores/bruno

sudo adduser --home /srv/alunos/joao --ingroup aluno --gecos "" --disabled-login joao
sudo chown joao:aluno /srv/alunos/joao

sudo adduser --home /srv/alunos/maria --ingroup aluno --gecos "" --disabled-login maria
sudo chown maria:aluno /srv/alunos/maria

sudo usermod -e 2051-04-25 -f 90 joao
sudo usermod -e 2051-04-25 -f 90 maria
