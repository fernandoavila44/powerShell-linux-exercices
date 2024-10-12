#!/bin/bash

# 2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
echo "Obteniendo títulos de las publicaciones..."
response=$(curl -s https://jsonplaceholder.typicode.com/posts)

echo "Títulos de las publicaciones:"
echo "$response" | jq '.[].title'