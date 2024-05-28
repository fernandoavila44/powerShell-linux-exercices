Clear-Host

# #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
# curl https://jsonplaceholder.typicode.com/users | jq

# #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
# curl https://jsonplaceholder.typicode.com/posts | jq ".[] .title"

# #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
# curl https://jsonplaceholder.typicode.com/posts | jq ".[] | select(.id==67)" 

# #4. Utiliza curl para enviar un nuevo POST a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
# curl -X POST -d '{"userId":123, "id":155, "title":"Prueba Robert para Actividad","body":"Esta es una prueba para validar la metodo POST a la API de pruebas"}' -H "Content-Type: application/json" https://jsonplaceholder.typicode.com/posts | jq

#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
curl https://jsonplaceholder.typicode.com/Robert | jq 'try error("No se pudo consultar en la API el endpoint suministrado") catch .'