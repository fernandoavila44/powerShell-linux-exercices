#!/bin/bash
 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/
 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
echo "#1"

echo "Lista completa de usuarios:"
response=$(curl -s  https://jsonplaceholder.typicode.com/users)
echo "$response" | jq .

echo "listado solo mostrando id, name, email"
response=$(curl -s https://jsonplaceholder.typicode.com/users)
echo "$response"| jq '.[] | {id, name, email}'

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
echo "#2"

response=$(curl -s https://jsonplaceholder.typicode.com/posts)
echo "Listado por título"
echo "$response" | jq '.[] | .title'

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
echo "#3"
Id=3
response=$(curl -s https://jsonplaceholder.typicode.com/posts/$Id)
echo "Listado por publicación con un id específico"
echo "$response" | jq


 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
 echo "#4"
 echo "enviando datos por post "
 data='{
         "año":"2024",
         "version":"2",
         "mes":"enero" 
         }'
 response=$(curl -s -X POST -H "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)

 echo "mostrar nuevo post"
 echo "$response"| jq 

 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
 echo "#5"
response=$(curl -s https://jsonplaceholder.typicode.com/infInexistente)
echo "$response"| jq 'if . == {} then "Error: No se pudo acceder a la informacion que solicitaste" else . end' && echo




 #Exitos!!

