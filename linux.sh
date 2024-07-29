 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
response1=$(curl https://jsonplaceholder.typicode.com/users)
 echo "Datos obtenidos:"

echo "$response1" | jq -r '.[] | .name'  | while read -r name; do
    echo "Nombre: $name"
done

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
response2=$(curl https://jsonplaceholder.typicode.com/posts)
echo "Datos obtenidos:"
echo "$response2" | jq .

echo "$response2" | jq -r '.[] | .title'  | while read -r title; do
    echo "Título: $title"
done

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
 filter_id=2
 echo "$response3" | jq -r --arg id "$filter_id" '.[] | select(.id == ($id | tonumber))' 


 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
data='{"title": "nuevo post de prueba",
    "body": "Este es nuestro primer post y queremos ver cómo resulta",
    "userId": "2",}'
echo "Enviando datos a la API..."
response4=$(curl -X POST "Content-Type: application/json" -d "$data" https://jsonplaceholder.typicode.com/posts)
echo "Datos obtenidos:"
echo "$response4" | jq .


 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
temp_file=$(mktemp)
response5=$(curl -s -w "%{http_code}" -o "$temp_file" https://jsonplaceholder.typicode.com/posts)
http_code=$(echo "$response5" | tail -n1)
case "$http_code" in
    200)
        echo "Éxito: La solicitud fue exitosa. Code: $http_code"
        cat "$temp_file"
        ;;
    400)
        echo "Error: Solicitud incorrecta. Verifica la sintaxis de la solicitud. Code: $http_code"
        exit 1
        ;;
    401)
        echo "Error: No autorizado. Verifica las credenciales de autenticación. Code: $http_code"
        exit 1
        ;;
    404)
        echo "Error: Recurso no encontrado. Verifica la URL. Code: $http_code"
        exit 1
        ;;
    500)
        echo "Error: Error interno del servidor. Intenta nuevamente más tarde. Code: $http_code"
        exit 1
        ;;
    *)
        echo "Error: Código de estado HTTP inesperado $http_code."
        exit 1
        ;;
esac
