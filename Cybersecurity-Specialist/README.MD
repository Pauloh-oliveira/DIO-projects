# Clonando um Site com SEToolkit no Kali Linux

Este projeto demonstra como usar o Social-Engineer Toolkit (SEToolkit) no Kali Linux para clonar um site de forma automatizada. Abaixo estão os passos realizados pelo script incluído neste repositório:

---

## **Passo a Passo**

1. Verifica se o SEToolkit está instalado no sistema. Caso não esteja, ele é automaticamente instalado.
2. Inicia o SEToolkit no terminal.
3. Seleciona as opções necessárias para configurar um ataque de engenharia social:
   - **Social-Engineering Attacks**
   - **Website Attack Vectors**
   - **Credential Harvester Attack Method**
   - **Site Cloner**
4. Solicita o endereço IP local para capturar credenciais (definido como `127.0.0.1`).
5. Solicita a URL do site a ser clonado (definido como `https://www.facebook.com`).
6. Inicia um servidor para hospedar o site clonado.

---

## **Automação**

Um script Bash (`clone_site.sh`) foi desenvolvido para automatizar todo o processo, eliminando a necessidade de interação manual.

**Execute o script com:**

```bash
sudo bash clone_site.sh
