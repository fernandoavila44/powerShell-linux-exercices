 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.

echo "### Lista de usuarios ###"
curl -s https://jsonplaceholder.typicode.com/users | jq
echo ""
 
 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.

 echo "### Títulos de las publicaciones ###"
curl -s https://jsonplaceholder.typicode.com/posts | jq '.[].title'
echo ""

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.

ID de publicacion = 3
echo "### Publicación con ID $POST_ID ###"
curl -s https://jsonplaceholder.typicode.com/posts | jq ".[] | select(.id == $POST_ID)"
echo ""
 
 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.

echo "### Enviando un nuevo post ###"
curl -s -X POST https://jsonplaceholder.typicode.com/posts \
  -H "Content-Type: application/json" \
  -d '{"title": "Nuevo Post", "body": "Este es el contenido del post", "userId": 1}' \
  | jq
echo ""
 
 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

echo "### Manejo de error intencional ###"
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://jsonplaceholder.typicode.com/invalid-endpoint)
if [ "$STATUS_CODE" -ne 200 ]; then
  echo "Error: El endpoint no existe o ha ocurrido un problema (Código de estado: $STATUS_CODE)."
else
  curl -s https://jsonplaceholder.typicode.com/invalid-endpoint | jq
fin
 #Exitos!!
