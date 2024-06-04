 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.

echo "Obteniendo datos de la API..."
response=$(curl https://jsonplaceholder.typicode.com/users)
echo "Datos obtenidos:"
echo "$response" | jq .

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.

echo "Obteniendo datos de la API..."
response=$(curl -s https://jsonplaceholder.typicode.com/posts)
title=$(echo "$response" | jq -r '.[].title')
echo "Datos obtenidos:"
echo "Registros: $title"

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.

echo "Obteniendo datos de la API..."
response=$(curl -s https://jsonplaceholder.typicode.com/posts/1)
echo "Datos obtenidos:"
echo "$response" | jq .

 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.

data='{"userId":1, "id": 1, "title": "Believe in Yourself", "body": "The power to change your life is in your hands."}'

echo "Enviando datos a la API..."
response=$(curl -X POST "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)
echo "Datos obtenidos:"
echo "$data" | jq .

 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

response=$(curl -sS "https://jsonplaceholder.typicode.com/invalid-endpoint")

error=$(echo "$response" | jq -r '.error')

if [ "$error" = "null" ]; then
    echo "$response"
else
    echo "Ocurrió un error al realizar la solicitud:"
    echo "Error: $error"
    echo "Por favor, intenta nuevamente más tarde."
fi