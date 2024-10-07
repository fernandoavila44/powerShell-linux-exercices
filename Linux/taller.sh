 #!/bin/bash

 #Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
 
# Realizando solicitud GET a la API
echo "Realizando solicitud GET a la API"
response=$(curl -s https://jsonplaceholder.typicode.com/users)

# Verifica si la respuesta no está vacía
if [ -n "$response" ]; then
    echo "Datos obtenidos:"
    echo "$response" | jq .  # Formatea y muestra los datos con jq
else
    echo "No se obtuvieron datos."
fi

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
  
# Realizando solicitud GET a la API
echo "Realizando solicitud GET a la API..."

 Obtener los posts y filtrar los títulos usando jq (deshabilitando verificación SSL)
 response=$(curl -k -s https://jsonplaceholder.typicode.com/posts)

# Imprimir la respuesta completa para depuración
 echo "Respuesta de la API: $response"

if [ -n "$response" ]; then
    echo "Títulos de las publicaciones:"
    echo "$response" | jq '.[].title'
else
    echo "No se obtuvieron datos."
fi

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.

# Realizando solicitud GET a la API
 echo "Realizando solicitud GET a la API..."

 #Solicitar el ID de la publicación
 read -p "Ingrese el ID de la publicación que desea buscar: " id

# Obtener los posts y buscar la publicación con el ID especificado usando jq
  response=$(curl -s https://jsonplaceholder.typicode.com/posts)

# Imprimir la respuesta completa para depuración (opcional)
 echo "Respuesta de la API: $response"

# Buscar la publicación con el ID proporcionado
 post=$(echo "$response" | jq --argjson id "$id" '.[] | select(.id == $id)')

 if [ -n "$post" ]; then
    echo "Publicación con ID $id encontrada:"
    echo "$post" | jq
else
    echo "No se encontró una publicación con el ID $id."
fi

 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
    
# Definir los datos del nuevo post
new_post=$(cat <<EOF
{
  "title": "Nuevo Post desde curl",
  "body": "Este es el cuerpo del nuevo post creado desde curl y bash.",
  "userId": 1
}
EOF
)
# Realizando el POST a la API
echo "Enviando nuevo post a la API..."
response=$(curl -s -X POST https://jsonplaceholder.typicode.com/posts \
  -H "Content-Type: application/json" \
  -d "$new_post")

# Mostrar la respuesta formateada con jq
if [ -n "$response" ]; then
    echo "Respuesta del servidor:"
    echo "$response" | jq .
else
    echo "No se obtuvo respuesta del servidor."
fi

 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

   # Definir el endpoint que devolverá un error
url="https://jsonplaceholder.typicode.com/invalid-endpoint"

# Realizando la solicitud GET
echo "Realizando solicitud GET a la API..."
response=$(curl -s -w "%{http_code}" -o response.json "$url")

# Separar el código de estado de la respuesta
http_code=$(echo "$response" | tail -n1)
response_body=$(cat response.json)

# Manejar el error
if [ "$http_code" -ne 200 ]; then
    echo "Se produjo un error al realizar la solicitud."
    echo "Código de estado: $http_code"
    echo "Respuesta de la API:"

    # Mostrar la respuesta completa utilizando jq
    echo "$response_body" | jq . || echo "No se pudo procesar la respuesta."
else
    echo "Datos obtenidos exitosamente:"
    echo "$response_body" | jq .
fi

# Limpiar el archivo de respuesta
rm -f response.json

 #Exitos!!
 