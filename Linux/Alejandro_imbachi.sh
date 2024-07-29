#!/bin/bash

# Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.

echo "Lista de usuarios"
response=$(curl https://jsonplaceholder.typicode.com/users)
echo "Datos obtenidos:"
echo "$response" | jq .



#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
 
echo "Títulos de las publicaciones:"
response=$(curl https://jsonplaceholder.typicode.com/posts)
echo "Datos obtenidos:"
echo "$response" | jq ".[].title"




#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
 
POST_ID=2
echo "Publicación con ID $POST_ID:"
response=$(curl https://jsonplaceholder.typicode.com/posts/$POST_ID)
echo "Datos obtenidos:"
echo "$response" | jq .




#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
 
data='{
    "title": "nuevo post",
    "body": "Esto es un ejemplo post desde bash",
    "userId": 2
}'
echo "Enviando un nuevo post:"
response=$(curl -s -X POST -H "Content-Type: application/json; " -d "$data" https://jsonplaceholder.typicode.com/posts)
echo "Datos obtenidos:"
echo "$response" | jq .
