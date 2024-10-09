#!/bin/bash

# 1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
echo "Obteniendo datos de usuarios..."
response=$(curl https://jsonplaceholder.typicode.com/users)

echo "Datos de usuarios:"
echo "$response" | jq .
