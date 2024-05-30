#!/bin/bash

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

# for characters in $(echo "$response.results" | jq -c '.[]'); do
#     echo $characters | jq
# done