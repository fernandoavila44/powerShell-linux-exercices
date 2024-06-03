 #1
 #echo "Obteniendo datos de la API..."
  # response=$(curl https://jsonplaceholder.typicode.com/users)
 #echo "Datos obtenidos:"
#echo "$response" | jq .

# 2
# echo "Obteniendo datos de la API..."
 #    response=$(curl -s https://jsonplaceholder.typicode.com/posts)
  #   title=$(echo "$response" | jq -r '.[].title')
 #echo "Datos obtenidos:"
 #echo "Registros: $title"


# 3
# echo "Obteniendo datos de la API..."
#     response=$(curl -s https://jsonplaceholder.typicode.com/posts/1)
#     echo "Datos obtenidos:"
#     echo "$response" | jq .


# 4
# data='{
#     "id": 101,
#     "title": "Disfruta la vida, esfuérzate y da lo mejor de ti. ¡Necesito un 101% de ti, vamos!!!",
#     "body": "Recuerda tu historial de motivación y confía en ti",
#     "userId":1
# }'

# echo "Enviando datos a la API..."

# response=$(curl -X POST "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)
# echo "Datos obtenidos:"
# echo "$data" | jq .

#5


# Intentando obtener datos de un endpoint que no existe para provocar un error 404
echo "Intentando obtener datos de un endpoint inexistente..."

# Realiza la solicitud y captura la respuesta y el código de estado HTTP
response=$(curl -s -w "\n%{http_code}" https://jsonplaceholder.typicode.com/nonexistentendpoint)
http_code=$(echo "$response" | tail -n 1)
response_body=$(echo "$response" | sed '$d')

# Manejo del error
if [ "$http_code" -ne 200 ]; then
    echo "Error al obtener datos de la API. Código de estado HTTP: $http_code"
    echo "Mensaje de error de la API:"
    echo "$response_body" | jq '.'
else
    echo "Datos obtenidos correctamente:"
    echo "$response_body" | jq '.'
fi
