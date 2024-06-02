 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
 echo "Ejercicio 1"
curl https://jsonplaceholder.typicode.com/users | jq

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
    echo "Ejercicio 2"
curl https://jsonplaceholder.typicode.com/posts | jq '.[] | .title'

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.
    echo "Ejercicio 3"
curl https://jsonplaceholder.typicode.com/posts | jq '.[] | select(.id == 8)'

 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
    echo "Ejercicio 4"
curl -X POST -H "Content-Type: application/json" -d '{"title": "Ejercicio Carlos", "body": "Esta es una pruba con un POST", "userId": 10}' https://jsonplaceholder.typicode.com/posts | jq

 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.
    echo "Ejercicio 5"
curl https://jsonplaceholder.typicode.com/NoRetornara | jq ' try error("Error provocado intencionalmente")  catch.'





 #Exitos!!

