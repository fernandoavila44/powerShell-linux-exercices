 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
 MostrarUsuarios(){
    echo "Obteniendo datos de la API..."
response=$(curl -s https://jsonplaceholder.typicode.com/users)
echo "$response" | jq
 }

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
  MostrarTitulos(){
    echo "Obteniendo datos de la API..."
response=$(curl -s https://jsonplaceholder.typicode.com/posts)
echo "$response" | jq -c '.[]' | while read -r titles; do
    name=$(echo "$titles" | jq -r '.title')
    echo "El titulo de la publicacion es $name"
done
 }
 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
   MostrarTitulosPorId(){
    POST_ID=20
    echo "Obteniendo datos de la API..."
response=$(curl -s "https://jsonplaceholder.typicode.com/posts" | jq ".[] | select(.id == $POST_ID)")
echo $response | jq
 }
 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

 #Exitos!!

#MostrarUsuarios
#MostrarTitulos
MostrarTitulosPorId