#!/bin/bash

# Utilizar la siguiente API https://jsonplaceholder.typicode.com/

#1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
response=$(curl -s https://jsonplaceholder.typicode.com/users)
echo "$response" | jq .

#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
response=$(curl -s https://jsonplaceholder.typicode.com/posts)
echo "$response" | jq -c '.[]' | while read -r posts; do
    title=$(echo "$posts" | jq -r '.title')
    echo $title
done

#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
verPost(){
    local idPost=$1
    local type=$2
    if [ "$type" == "jq" ]; then
        response=$(curl -s "https://jsonplaceholder.typicode.com/posts")
        echo "$response" | jq -c '.[]' | while read -r post; do
            id=$(echo "$post" | jq -r '.id')
            if [ "$id" -eq "$idPost" ]; then
                echo "$post" | jq .
            fi
        done  
    else
        response=$(curl https://jsonplaceholder.typicode.com/posts/$idPost)
        echo "$response" | jq .
    fi    
}
#verPost 5
verPost 5 jq

#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
data='{
    "title": "Trabajo ParqueSoft",
    "body": "Este es un ejemplo de un script en bash",
    "userId": 1
}'
response=$(curl -s -X POST -H "Content-Type: application/json; charset=UTF-8" -d "$data" https://jsonplaceholder.typicode.com/posts)
echo "Datos obtenidos:"
echo "$response" | jq .

#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
response=$(curl -s -o /dev/null -w '%{http_code}' https://jsonplaceholder.typicode.com/parqueSoft)
if [ $response -eq 404 ]; then
    echo "La pagina no fue encontrada error $response"
fi

#Exitos!!