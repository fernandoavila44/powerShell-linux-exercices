#!/bin/bash

# 5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
url="https://jsonplaceholder.typicode.com/userz/1" # Error en el endpoint
echo "Obteniendo datos de usuario..."
response=$(curl $url) # Captura de respuesta
http_code=$(curl -o /dev/null -w "%{http_code}" $url) # Capturar solo el código HTTP

if [ "$http_code" -eq 200 ]; then
    echo "Datos del usuario:"
    echo "$response" | jq .
else
    echo "Error: La obtención de datos del usuario ha fallado. Cod: $http_code"
fi
