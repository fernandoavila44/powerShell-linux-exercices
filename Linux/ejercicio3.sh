 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts
 # y utiliza jq para encontrar y mostrar la publicación con un id específico.

curl -s https://jsonplaceholder.typicode.com/posts | jq '.[] | select(.id == 5)'