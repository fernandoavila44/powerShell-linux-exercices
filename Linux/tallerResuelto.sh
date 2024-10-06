echo "Obteniendo datos de la API de usuarios..."
response=$(curl -s https://jsonplaceholder.typicode.com/users)
echo "Datos obtenidos:"
echo "$response" | jq .

echo "Obteniendo títulos de las publicaciones..."
response=$(curl -s https://jsonplaceholder.typicode.com/posts)
echo "Títulos de publicaciones:"
echo "$response" | jq -r '.[].title'

id=1
echo "Obteniendo la publicación con ID $id..."
response=$(curl -s https://jsonplaceholder.typicode.com/posts/$id)
echo "Publicación con ID $id:"
echo "$response" | jq .

data='{"title": "Nuevo Post", "body": "Contenido del nuevo post", "userId": 1}'

echo "Enviando un nuevo post a la API..."
response=$(curl -s -X POST -H "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)
echo "Respuesta del servidor:"
echo "$response" | jq .

echo "Obteniendo datos de un endpoint no existente..."
response=$(curl -s -w "%{http_code}" -o response.json https://jsonplaceholder.typicode.com/invalid_endpoint)
http_code=$(cat response.json)

if [[ "$http_code" -ne 200 ]]; then
    echo "Error al obtener los datos. Código de error: $http_code"
else
    echo "Datos obtenidos:"
    echo "$response" | jq .
fi
