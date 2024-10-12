#!/bin/bash

# 5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente.
echo "Intentando acceder a un endpoint no válido..."
HTTP_CODE=$(curl -s -o response.json -w "%{http_code}" https://jsonplaceholder.typicode.com/notfound)

if [ "$HTTP_CODE" -eq 404 ]; then
    echo "Error: Endpoint no encontrado"
else
    echo "Datos obtenidos:"
    cat response.json | jq .
fi