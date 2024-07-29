 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
res1=$(curl https://jsonplaceholder.typicode.com/users)
 echo "Se obtuvieron los datos: "

echo "$res1" | jq -r '.[] | .name'  | while read -r name; do
    echo "Nombre: $name"
done

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
res2=$(curl https://jsonplaceholder.typicode.com/posts)
echo "Se obtuvieron los datos: "
echo "$res2" | jq .

echo "$res2" | jq -r '.[] | .title'  | while read -r title; do
    echo "Titulo: $title"
done

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
 filterId=4
 echo "$res3" | jq -r --arg id "$filterId" '.[] | select(.id == ($id | tonumber))' 


 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
publicar='{"title": "Prueba",
    "body": "Resultado de la prueba",
    "userId": "3",}'
echo "Enviando la publicación..."
res4=$(curl -X POST "Content-Type: application/json" -d "$publicar" https://jsonplaceholder.typicode.com/posts)
echo "Se obtuvieron los datos: "
echo "$res4" | jq .


 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
temp=$(mktemp)
res5=$(curl -s -w "%{http_code}" -o "$temp" https://jsonplaceholder.typicode.com/posts)
code_http=$(echo "$res5" | tail -n1)
case "$code_http" in
    200)
        echo "Solicitud completada con éxito. Codigo: $code_http"
        cat "$temp"
        ;;
    400)
        echo "Solicitud no completada. Error en el servidor. Codigo: $code_http"
        exit 1
        ;;
    401)
        echo "Solicitud no completada. Recurso no encontrado. Verifica la URL. Codigo: $code_http"
        exit 1
        ;;
    404)
        echo "Solicitud no completada. Error en las credenciales de autenticación. Codigo: $code_http"
        exit 1
        ;;
    500)
        echo "Solicitud no completada. Falla en la sintaxis. Codigo: $code_http"
        exit 1
        ;;
    *)
        echo "Solcitud no completada. Código no identificado $code_http."
        exit 1
        ;;
esac