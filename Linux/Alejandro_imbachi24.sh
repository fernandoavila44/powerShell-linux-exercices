# 1. Realizar una solicitud GET a la API jsonplaceholder.typicode.com/users y utilizar jq para formatear y mostrar la lista de usuarios.
echo "1. Lista de usuarios:"
curl -s https://jsonplaceholder.typicode.com/users | jq
echo -e "\n"

# 2. Realizar una solicitud GET a la API jsonplaceholder.typicode.com/posts y utilizar jq para filtrar y mostrar solo los títulos de las publicaciones.
echo "2. Títulos de las publicaciones:"
curl -s https://jsonplaceholder.typicode.com/posts | jq '.[].title'
echo -e "\n"

# 3. Realizar una solicitud GET a la API jsonplaceholder.typicode.com/posts y utilizar jq para encontrar y mostrar la publicación con un id específico.
POST_ID=1
echo "3. Publicación con ID = $POST_ID:"
curl -s https://jsonplaceholder.typicode.com/posts | jq ".[] | select(.id == $POST_ID)"
echo -e "\n"

# 4. Utilizar curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utilizar jq para mostrar la respuesta del servidor.
echo "4. Enviar un nuevo post y mostrar la respuesta:"
curl -s -X POST https://jsonplaceholder.typicode.com/posts \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Trabajo",
    "body": "bar",
    "userId": 1
}' | jq
echo -e "\n"

# 5. Realizar una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utilizar jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
echo "5. Manejo de error intencional:"
curl -s -o response.json -w "%{http_code}" https://jsonplaceholder.typicode.com/invalidendpoint | {
  read code
  if [ "$code" -ne 200 ]; then
    echo "Error: received HTTP status code $code"
  else
    cat response.json | jq
  fi
  rm response.json
}
echo -e "\n"


