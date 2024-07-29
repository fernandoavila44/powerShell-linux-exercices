 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users 
 #y utiliza jq para formatear y mostrar la lista de usuarios.

curl -s https://jsonplaceholder.typicode.com/users | jq '.'