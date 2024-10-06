#!/bin/bash

# Para instalar jq en gitbash siguen los siguientes pasos:
# 1. abrir gitbash como administrador
# 2. ejecutar el siguiente comando: curl -L -o /usr/bin/jq.exe https://github.com/stedolan/jq/releases/latest/download/jq-win64.exe
# 3. jq queda instalado

# 1.Api fetching

# echo "Obteniendo datos de la API..."

# response=$(curl https://rickandmortyapi.com/api/character)

# echo "Datos obtenidos:"

# echo "$response" | jq .

# 2.Api Post 

# data='{"clave": "valor"}'

# echo "Enviando datos a la API..."

# response=$(curl -X POST "Content-Type: application/json" -d "$data" https://rickandmortyapi.com/api/character)
# echo "Datos obtenidos:"
# echo "$response" | jq .

# 3. 

# echo "Obteniendo datos de la API..."
# response=$(curl -s https://rickandmortyapi.com/api/character)

# count=$(echo "$response" | jq -r '.info.count')
# echo "Datos obtenidos:"
# echo "Registros: $count"

# 4.

# echo "Obteniendo datos de la API..."
# response=$(curl -s https://rickandmortyapi.com/api/character)

# echo "$response" | jq -c '.results[]' | while read -r character; do
#     name=$(echo "$character" | jq -r '.name')
#     echo "Nombre del personaje: $name"
# done