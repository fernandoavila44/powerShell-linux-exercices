# Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
echo "Obteniendo datos de la API..."
 curl -s https://jsonplaceholder.typicode.com/users | jq
 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
echo "Obteniendo datos de la API..."
 curl -s https://jsonplaceholder.typicode.com/posts | jq '.[].title'
 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
echo "Obteniendo datos de la API..."    
curl -s https://jsonplaceholder.typicode.com/posts | jq '.[] | select(.id == 5)'
 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
curl -s -X POST https://jsonplaceholder.typicode.com/posts \
-H "Content-Type: application/json" \
-d '{"title": "Mi nuevo post", "body": "Este es el contenido del post", "userId": 1}'| jq
 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
response=$(curl -s -w "%{http_code}" https://jsonplaceholder.typicode.com/invalidEndpoint -o response.json)

if [ "$response" -ne 200 ]; then
    echo "Error: La solicitud falló con el código de estado $response. El endpoint no existe."
else
    cat response.json | jq
fi

 #Exitos!!