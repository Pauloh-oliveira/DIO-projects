#!/bin/bash

echo "=== Sistema de Configuração Empresarial ==="
echo "Iniciando configuração de usuários e diretórios..."

echo "Criando estrutura de diretórios..."
mkdir -p /empresa/financeiro
mkdir -p /empresa/marketing  
mkdir -p /empresa/ti
mkdir -p /empresa/compartilhado

echo "Configurando grupos departamentais..."
groupadd FINANCEIRO
groupadd MARKETING
groupadd TI

echo "Criando contas de usuários..."
# Departamento Financeiro
useradd ana -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G FINANCEIRO
useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G FINANCEIRO
useradd lucia -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G FINANCEIRO

# Departamento Marketing
useradd fernanda -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G MARKETING
useradd ricardo -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G MARKETING
useradd camila -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G MARKETING

# Departamento TI
useradd bruno -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G TI
useradd patricia -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G TI
useradd diego -m -s /bin/bash -p $(openssl passwd -crypt Admin2024) -G TI

echo "Aplicando permissões de segurança..."
chown root:FINANCEIRO /empresa/financeiro
chown root:MARKETING /empresa/marketing
chown root:TI /empresa/ti

chmod 770 /empresa/financeiro
chmod 770 /empresa/marketing
chmod 770 /empresa/ti
chmod 777 /empresa/compartilhado

echo "Configuração concluída com sucesso!"
echo "Usuários criados: 9"
echo "Grupos criados: 3" 
echo "Diretórios configurados: 4"
echo "=== Fim da configuração ==="