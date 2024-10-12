#!/bin/bash

# 4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts.
echo "Enviando un nuevo post a la API..."
response=$(curl -s -X POST https://jsonplaceholder.typicode.com/posts \
-H "Content-Type: application/json" \
-d '{"userId": 1, "title": "Título de prueba", "body": "Este es el contenido del post."}')

echo "Respuesta del servidor al enviar el nuevo post:"
echo "$response" | jq .