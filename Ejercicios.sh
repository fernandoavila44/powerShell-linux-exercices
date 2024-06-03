# 1
# echo "Obteniendo datos de la API..."
# response=$(curl https://jsonplaceholder.typicode.com/users)
# echo "Datos obtenidos:"
# echo "$response" | jq .

# 2
# echo "Obteniendo datos de la API..."
# response=$(curl -s https://jsonplaceholder.typicode.com/posts)
# title=$(echo "$response" | jq -r '.[].title')
# echo "Datos obtenidos:"
# echo "Registros: $title"


# 3
# echo "Obteniendo datos de la API..."
#     response=$(curl -s https://jsonplaceholder.typicode.com/posts/1)
#     echo "Datos obtenidos:"
#     echo "$response" | jq .


# 4
# data='{
#     "id": 101,
#     "title": "Vive la vida al máximo! Nunca te rindas y esfuérzate siempre por alcanzar tus metas",
#     "body": "Mantén siempre presente tu historial de logros y mantén la confianza en tus habilidades",
#     "userId":1
# }'

# echo "Enviando datos a la API..."

# response=$(curl -X POST "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)
# echo "Datos obtenidos:"
# echo "$data" | jq .

#5

echo "Intentando obtener datos de un endpoint inexistente..."

response=$(curl -s -w "\n%{http_code}" https://jsonplaceholder.typicode.com/nonexistentendpoint)
http_code=$(echo "$response" | tail -n 1)
response_body=$(echo "$response" | sed '$d')

if [ "$http_code" -ne 200 ]; then
    echo "Error al obtener datos de la API. Código de estado HTTP: $http_code"
    echo "Mensaje de error de la API:"
    echo "$response_body" | jq '.'
else
    echo "Datos obtenidos correctamente:"
    echo "$response_body" | jq '.'
fi