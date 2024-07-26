#!/bin/bash

# 1. Solicitud GET a /users y formatear la lista de usuarios
echo "Lista de usuarios:"
curl -s https://jsonplaceholder.typicode.com/users | jq "."

# 2. Solicitud GET a /posts y filtrar solo los títulos de las publicaciones
echo "Títulos de las publicaciones:"
curl -s https://jsonplaceholder.typicode.com/posts | jq ".[].title"

# 3. Solicitud GET a /posts para encontrar y mostrar una publicación con un ID específico
POST_ID=1
echo "Publicación con ID $POST_ID:"
curl -s https://jsonplaceholder.typicode.com/posts/$POST_ID | jq "."

# 4. Enviar un nuevo post a /posts y mostrar la respuesta del servidor
echo "Enviando un nuevo post:"
curl -s -X POST https://jsonplaceholder.typicode.com/posts -H "Content-Type: application/json" -d '{"title": "foo", "body": "bar", "userId": 1}' | jq "."

# 5. Solicitud GET a un endpoint inexistente y manejar el error
echo "Manejando un error:"
RESPONSE=$(curl -s -o response.json -w "%{http_code}" https://jsonplaceholder.typicode.com/nonexistent_endpoint)
if [ "$RESPONSE" -ne 200]; then
  echo "Error: Received HTTP status code $RESPONSE"
else
  jq "." response.json
fi
rm -f response.json

