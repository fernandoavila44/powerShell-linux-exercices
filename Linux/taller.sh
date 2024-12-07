# Estudiante: Daniver Torres C23
# Utilizar la siguiente API https://jsonplaceholder.typicode.com/

#1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
echo "Obteniendo lista de usuarios..."
users=$(curl -s https://jsonplaceholder.typicode.com/users)
echo "Lista de usuarios:"
echo "$users" | jq '.'

#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
echo "Obteniendo títulos de publicaciones..."
posts=$(curl -s https://jsonplaceholder.typicode.com/posts)
echo "Títulos de las publicaciones:"
echo "$posts" | jq '.[] | .title'

#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
read -p "Ingrese el ID de la publicación a buscar: " post_id
echo "Buscando publicación con ID $post_id..."
specific_post=$(echo "$posts" | jq --argjson id "$post_id" '.[] | select(.id == $id)')
if [[ -z "$specific_post" ]]; then
    echo "No se encontró ninguna publicación con ID $post_id"
else
    echo "Publicación encontrada:"
    echo "$specific_post"
fi

#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
echo "Enviando un nuevo post..."
new_post='{"title": "Nuevo post", "body": "Este es el contenido del nuevo post", "userId": 1}'
response=$(curl -s -X POST -H "Content-Type: application/json" -d "$new_post" https://jsonplaceholder.typicode.com/posts)
echo "Respuesta del servidor al enviar el post:"
echo "$response" | jq '.'

#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
echo "Realizando una solicitud a un endpoint inexistente..."
error_response=$(curl -s -w "%{http_code}" -o /dev/null https://jsonplaceholder.typicode.com/invalid_endpoint)
if [ "$error_response" -ne 200 ]; then
    echo "Error detectado: El endpoint no es válido. Código HTTP: $error_response"
else
    echo "Solicitud exitosa al endpoint inexistente."
fi

#Exitos!!