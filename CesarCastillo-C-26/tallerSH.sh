#!/bin/bash
#1
echo "### Lista de usuarios ###"
curl -s https://jsonplaceholder.typicode.com/users | jq
echo ""
#2
echo "### Títulos de las publicaciones ###"
curl -s https://jsonplaceholder.typicode.com/posts | jq '.[].title'
echo ""
#3
POST_ID=3
echo "### Publicación con ID $POST_ID ###"
curl -s https://jsonplaceholder.typicode.com/posts | jq ".[] | select(.id == $POST_ID)"
echo ""
#4
echo "### Enviando un nuevo post ###"
curl -s -X POST https://jsonplaceholder.typicode.com/posts \
  -H "Content-Type: application/json" \
  -d '{"title": "Nuevo Post", "body": "Este es el contenido del post", "userId": 1}' \
  | jq
echo ""
#5
echo "### Manejo de error intencional ###"
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://jsonplaceholder.typicode.com/invalid-endpoint)
if [ "$STATUS_CODE" -ne 200 ]; then
  echo "Error: El endpoint no existe o ha ocurrido un problema (Código de estado: $STATUS_CODE)."
else
  curl -s https://jsonplaceholder.typicode.com/invalid-endpoint | jq
fi