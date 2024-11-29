#!/bin/bash

# 2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
echo "Obteniendo datos de las publicaciones..."
response=$(curl https://jsonplaceholder.typicode.com/posts)

# Limpiar caracteres de control para evitar parse error: Invalid string: control characters from U+0000 through U+001F
clean_response=$(echo "$response" | tr -d '\000-\031')

echo "Titulos de la publicaciones:"
echo "$clean_response" | jq '.[].title'
