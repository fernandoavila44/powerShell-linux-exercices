 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
 curl -s https://jsonplaceholder.typicode.com/users | jq

 
 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
 curl -s https://jsonplaceholder.typicode.com/posts | jq '.[].title'

 
 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
 curl -s https://jsonplaceholder.typicode.com/posts | jq '.[] | select(.id == 10)'

 
 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
 curl -s -X POST https://jsonplaceholder.typicode.com/posts \
  -H "Content-Type: application/json" \
  -d '{"title": "Nuevo Post", "body": "Este es el contenido del post", "userId": 1}' \
  | jq

 
 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
curl -s https://jsonplaceholder.typicode.com/nonexistent | jq 'if .error then "Error: El endpoint no existe" else . end'

 #Exitos!!