# Utilizar la siguiente API https://jsonplaceholder.typicode.com/
#1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
#Exitos!!

# 1
users=$(curl https://jsonplaceholder.typicode.com/users)

# echo "$users" | jq .

# 2
 titles=$(curl https://jsonplaceholder.typicode.com/posts | jq -r '.[].title')
#  echo "$titles"

 # 3
 specific_post=$(curl https://jsonplaceholder.typicode.com/posts/1)
#  echo "$specific_post" | jq .

#  4
 new_post=$(curl -X POST -H "Content-Type: application/json" -d '{"userId": 1, "title": "New Post", "body": "This is a new post."}' https://jsonplaceholder.typicode.com/posts)

#  echo "$new_post" | jq .

# 5 la pagina no tiene error 404 
 error=$(curl https://jsonplaceholder.typicode.com/nonexistentendpoint )


if [[ $error == "404" ]]; then
    echo "Error: Endpoint not found"
else
    echo "Request successful or another error occurred."
fi