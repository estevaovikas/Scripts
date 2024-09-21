#! /bin/bash

# Define o timezone para o fuso horário de SP
timedatectl set-timezone America/Sao_Paulo

# Váriável para armazenar data e hora.
data=$(date +%H:%M:%S)

# Exibe mensagem na tela informando o horário.
echo "O fuso horário foi definido para São Paulo: $data"
