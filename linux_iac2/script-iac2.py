#!/usr/bin/env python3

import os
import subprocess


def run_command(command):
    print(f"Executando: {command}")
    subprocess.run(command, shell=True, check=True)


print("Atualizando o servidor...")
run_command("apt-get update")
run_command("apt-get upgrade -y")
run_command("apt-get install apache2 -y")
run_command("apt-get install unzip -y")

print("Baixando e copiando os arquivos da aplicação...")

os.chdir("/tmp")
run_command(
    "wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
)
run_command("unzip -o main.zip")
os.chdir("linux-site-dio-main")
run_command("cp -R * /var/www/html/")
