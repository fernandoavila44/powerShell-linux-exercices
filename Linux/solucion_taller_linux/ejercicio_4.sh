#!/bin/bash

# 4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
data='{
    "userId":1,
    "title": "Test",
    "body": "Prueba publicacion nueva"
}'

echo "Enviando publicacion a la API..."
response=$(curl -X POST -H "Content-Type: application/json; charset=UTF-8" -d "$data" https://jsonplaceholder.typicode.com/posts)

# Limpiar caracteres de control para evitar parse error: Invalid string: control characters from U+0000 through U+001F
clean_response=$(echo "$response" | tr -d '\000-\031')

echo "Publicacion:"
echo "$clean_response" | jq .
