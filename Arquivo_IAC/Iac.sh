#!/bin/bash

			#INFRAESTRUTURA COMO CÓDIGO: SCRIPT CRIAÇÃO DE ESTRUTURA DE USUÁRIO, DIRETÓRIO E PERMISSÕES


#Diretórios
echo "Criação dos diretórios"

mkdir -p /publica
mkdir -p /adm
mkdir -p /ven
mkdir -p /ti


#grupos dos usuários
echo "criação dos grupos dos usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_TI


#Criando e adicionando ao grupo ADM
echo "criando e adicionando usuarios ao grupo ADM"

userAdm=("carlos" "maria" "joao")

for usuario in "${userAdm[@]}"; do
	sudo useradd -m "$usuario" -s /bin/bash -G GRP_ADM
	echo "$usuario:senha123" | sudo chpasswd
	echo "usuario $usuario criado e adicionado ao grupo!."
done


#Criando e adicionando ao grupo VEN
echo "criando e adicionando usuarios ao grupo VEN"

userVen=("debora" "sebastiana" "roberto")

for usuario in "${userVen[@]}"; do
	sudo useradd -m "$usuario" -s /bin/bash -G GRP_VEN
	echo "$usuario:senha123" | sudo chpasswd
	echo "usuario $usuario criado e adicionado ao grupo!."
done


#Criando e adicionado ao grupo TI
echo "criando e adicionando usuarios ao grupo TI"

userTi=("josefina" "amanda" "rogerio")

for usuario in "${userTi[@]}"; do
	sudo useradd -m "$usuario" -s /bin/bash -G GRP_TI
	echo "$usuario:senha123" | sudo chpasswd
	echo "usuario $usuario criado e adicionado ao grupo!."
done


echo "todos os usuarios foram criados com sucesso"



#Configurando permissões de cada diretório
echo "especificando permissoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_TI /ti

#Definindo as permissões de acesso para cada diretório
chmod 777 /publica
chmod 770 /adm
chmod 770 /ven
chmod 770 /ti


echo "Script Iac finalizado"
