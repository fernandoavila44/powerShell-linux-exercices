# Utilizar la siguiente API https://jsonplaceholder.typicode.com/
#1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.

echo "Obteniendo datos de la API..."
echo "Mostrar la lista de usuarios:"
contador=0
response=$(curl -s https://jsonplaceholder.typicode.com/users)
echo "$response" | jq -c '.[]' | while read -r users; do
    username=$(echo "$users" | jq -r '.username')
    contador=$((contador + 1))
    echo $contador. $username
done 
echo ""

#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.

echo "Mostrar títulos de las publicaciones:"
contador=0
response=$(curl -s https://jsonplaceholder.typicode.com/posts)
echo "$response" | jq -c '.[]' | while read -r posts; do
    title=$(echo "$posts" | jq -r '.title')
    contador=$((contador + 1))
    echo $contador. $title
done
echo ""

#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
numPost=89
echo "Mostrar publicación por id específico:"
response=$(curl -s https://jsonplaceholder.typicode.com/posts/"$numPost")
echo "$response" | jq 
echo ""

#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
data='{"userId": "1", "title": "este es un titulo", "body": "esto es el cuerpo de la publicacion"}'
echo "Enviando datos a la API..."
response=$(curl -X POST -s https://jsonplaceholder.typicode.com/posts -H "Content-Type: application/json" -d "$data")
echo "Datos obtenidos:"
echo "$response" | jq 
echo ""

#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

echo "Mostrar publicación por id específico con error intencional:"
# Realizar la consulta:
response=$(curl -s -w "%{http_code}" https://jsonplaceholder.typicode.com/posts/103)
http_code=${response: -3} # Extraer el código de estado HTTP
body=${response::-3}  # Extraer el cuerpo de la respuesta

# Evaluar el código de estado HTTP
if [ "$http_code" -eq 200 ]; then
    # Verificar si la respuesta es JSON válido usando jq
    if echo "$body" | jq empty 2>/dev/null; then
        echo "Respuesta válida:"
        echo "$body" | jq .  # Formatear el JSON con jq
    else
        echo "Error: La respuesta no es un JSON válido."
    fi
else
    echo "Error: No se pudo obtener la información. Código HTTP: $http_code"
fi

#Exitos!!