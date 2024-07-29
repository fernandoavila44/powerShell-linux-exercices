
 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts 
 #y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
curl -s https://jsonplaceholder.typicode.com/posts | jq '.[].title'