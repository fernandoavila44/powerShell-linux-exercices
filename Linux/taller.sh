# Utilizar la siguiente API https://jsonplaceholder.typicode.com/

#1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
MostrarUsuarios() {
    echo "Obteniendo datos de la API..."
    response=$(curl -s https://jsonplaceholder.typicode.com/users)
    echo "$response" | jq '.'
}

#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
MostrarTitulos() {
    echo "Obteniendo datos de la API..."
    response=$(curl -s https://jsonplaceholder.typicode.com/posts)
    echo "$response" | jq -c '.[]' | while read -r titles; do
        name=$(echo "$titles" | jq -r '.title')
        echo "El título de la publicación es $name"
    done
}

#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
MostrarTitulosPorId() {
    POST_ID=20
    echo "Obteniendo datos de la API..."
    response=$(curl -s "https://jsonplaceholder.typicode.com/posts" | jq ".[] | select(.id == $POST_ID)")
    echo "$response" | jq '.'
}

#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
PostEnApi() {
    data='{
        "userID": 200,
        "id": 200,
        "title": "PlaceHolder",
        "body": "HolderPlace"
    }'
    echo "Enviando datos a la API..."
    response=$(curl -s -X POST -H "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)
    echo "Datos obtenidos:"
    echo "$response" | jq '.'
}

#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
ErrorProvocado() {
    URL="https://jsonplaceholder.typicode.com/invalid-endpoint"
    response=$(curl -s -w "%{http_code}" $URL)
    http_code="${response: -3}"
    response_body="${response::-3}"
    if [[ "$http_code" -ne 200 ]]; then
        echo "Error: La solicitud a la API falló con el código de estado HTTP $http_code"
        exit 1
    fi
    echo "$response_body" | jq '.'
}

# Descomenta la función que quieras ejecutar
#MostrarUsuarios
#MostrarTitulos
#MostrarTitulosPorId
#PostEnApi
ErrorProvocado

#Exitos!!