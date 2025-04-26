
```bash
#!/bin/bash


if [[ $EUID -ne 0 ]]; then
   echo "Por favor, execute como root."
   exit 1
fi


if ! command -v setoolkit &> /dev/null; then
    echo "SEToolkit não encontrado. Instalando..."
    apt update && apt install -y set
fi


echo "Iniciando o SEToolkit..."
cat << EOF | setoolkit
1
2
3
2
127.0.0.1 
https://www.facebook.com
EOF

echo "O site foi clonado e o servidor está em execução!"
echo "Pressione Ctrl+C para interromper o servidor quando terminar."
