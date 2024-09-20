#! /bin/bash

# Define o caminho para o arquivo de saída
output_file="/home/vikas/atividades/consumomem/Top_processes_$(date +\%Y\%m\%d_\%H\%M).txt"

# Lista os 15 processos com maior consumo de memória e salvamos o arquivo de texto na variável output_files
ps -e -o pid,%mem --sort=%mem | head -n 16 > "$output_file"
