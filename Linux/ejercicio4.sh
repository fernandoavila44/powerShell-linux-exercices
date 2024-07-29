 #4. Utiliza curl para enviar un nuevo post a la API
 # jsonplaceholder.typicode.com/posts. Luego, utiliza 
 #jq para mostrar la respuesta del servidor.

curl -s -X POST -H "Content-Type: application/json" -d '{"title":"Nuevo Post","body":"Contenido del nuevo post","userId":1}' https://jsonplaceholder.typicode.com/posts | jq '.'