#!/bin/bash

# Utilizar la siguiente API https://jsonplaceholder.typicode.com/

#1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.

echo "Obteniendo datos de la API..."
res=$(curl -s https://jsonplaceholder.typicode.com/users)

echo "Datos obtenidos de los usuarios"
echo "$res" | jq

#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.

echo "Obteniendo datos de la API..."
res=$(curl -s https://jsonplaceholder.typicode.com/posts)

echo "Datos obtenidos de los titulos"
echo "$res" | jq -c '.[]' | while read -r object; do 
    title=$(echo "$object" | jq -r '.title')
    echo "Titulo: $title"
done

#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.

id=12
echo "Obteniendo datos de la API..."
res=$(curl -s https://jsonplaceholder.typicode.com/posts)

echo "Datos obtenidos del id: $id"
echo "$res" | jq  ".[] | select(.id == $id)"


#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.

data='{"title":"test","body":"nuevo Post","userId":1}'

echo "Enviando datos a la API..."
res=$(curl -s -X POST -H "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)
echo "Datos obtenidos del metodo POST"
echo "$res" | jq

#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

echo "Obteniendo datos de la API..."
res=$(curl -s https://jsonplaceholder.typicode.com/userz)
echo "$res" | jq 'try error("Error al momento d hacer la petición la peticion :(... F") catch .'

#Exitos!!