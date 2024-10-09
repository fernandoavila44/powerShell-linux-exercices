#!/bin/bash

# 3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
echo "Ingresar el ID de la publicación que desea consultar:"
read idPublicacion

echo "Obteniendo datos publicación ID: $idPublicacion..."
response=$(curl https://jsonplaceholder.typicode.com/posts/$idPublicacion)

# Limpiar caracteres de control para evitar parse error: Invalid string: control characters from U+0000 through U+001F
clean_response=$(echo "$response" | tr -d '\000-\031')

echo "Datos publicación ID: $idPublicacion"
echo "$clean_response" | jq .
