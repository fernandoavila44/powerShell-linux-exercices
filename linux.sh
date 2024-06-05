 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
 curl -s https://jsonplaceholder.typicode.com/users | jq '.'
 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
 curl -s https://jsonplaceholder.typicode.com/posts | jq '.[].title'
 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
 curl -s https://jsonplaceholder.typicode.com/posts | jq '.[] | select(.id == 10)'
 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
 curl -s -X POST https://jsonplaceholder.typicode.com/posts \
    -H "Content-Type: application/json" \
    -d '{
          "title": "foo",
          "body": "bar",
          "userId": 1
        }' | jq '.'
 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
 response=$(curl -s -o /dev/null -w "%{http_code}" https://jsonplaceholder.typicode.com/invalid-endpoint)
if [ "$response" -ne 200 ]; then
    echo "Error: La solicitud ha fallado con el código de estado HTTP $response"
else
    curl -s https://jsonplaceholder.typicode.com/invalid-endpoint | jq '.'
fi
 #Exitos!!