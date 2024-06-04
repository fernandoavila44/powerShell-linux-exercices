# Utilizar la siguiente API https://jsonplaceholder.typicode.com/

#1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.

# echo "Obteniendo datos de la API..."
# response=$(curl https://jsonplaceholder.typicode.com/users)
# echo "Datos obtenidos:"
# echo "$response" | jq .

#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.

# echo "Obteniendo datos de la API..."
#     response=$(curl -s https://jsonplaceholder.typicode.com/posts)
#     title=$(echo "$response" | jq -r '.[].title')
#  echo "Datos obtenidos:"
#  echo "Titulos: $title"

#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.

# echo "Obteniendo datos de la API..."
#     response=$(curl -s https://jsonplaceholder.typicode.com/posts/52)
#     echo "Datos obtenidos:"
#     echo "$response" | jq .

#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.

# newData='{
#     "id": 200,
#     "title": "hola API soy mateo",
#     "body": "hello word",
#     "userId":3
# }'

# echo "Enviando datos a la API..."

# response=$(curl -X POST "Content-Type: application/json" -d "$newData" https://jsonplaceholder.typicode.com/posts)
# echo "Datos obtenidos:"
# echo "$newData" | jq .


#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

# error 404
echo "Obteniendo datos..."

# Realiza la solicitud y espera la respuesta
response=$(curl -s -w "\n%{http_code}" https://jsonplaceholder.typicode.com/NONE)
http_code=$(echo "$response" | tail -n 1)
response_body=$(echo "$response" | sed '$d')

# Manejo del error
if [ "$http_code" -ne 200 ]; then
    echo "Error al obtener datos de la API: $http_code"

    echo "$response_body" | jq '.'
else
    echo "Datos obtenidos:"
    echo "$response_body" | jq '.'
fi