# Utilizar la siguiente API https://jsonplaceholder.typicode.com/


#1. Realiza una solicitud GET a la API https://jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
echo "Cargando datos desde la API"
response=$(curl https://jsonplaceholder.typicode.com/users | jq '.[] | {Nombre: .name, Apodo: .username, Ciudad: .address.city}')
echo "Datos en la API:"
echo "$response" | jq .
echo "Fin de la carga"

echo "//////////////////"

#2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.
echo "Cargando datos desde la API"
response=$(curl https://jsonplaceholder.typicode.com/users | jq '.[] | {Titulo: .title}')
echo "Datos en la API:"
echo "$response" | jq .
echo "Fin de la carga"

echo "//////////////////"

#3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.

read -p "Ingrese el ID del personaje: " idApi
echo "Cargando datos desde la API"
response=$(curl https://jsonplaceholder.typicode.com/posts/$idApi)
echo "Datos en la API:"
echo "$response" | jq .
echo "Fin de la carga"

echo "//////////////////"

#4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.

echo "Cargando datos a la API"
response=$(curl -s -X POST https://jsonplaceholder.typicode.com/posts \ -H "Content-Type: application/json" \ -d '{"title":"foo","body":"bar","userId":1}')
echo "Datos en la API:"
echo "$response" | jq .
echo "Fin de la carga"

echo "//////////////////"


#5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

echo "Cargando datos desde la API"
response=$(curl -s -o /dev/null -w "%{http_code}" https://jsonplaceholder.typicode.com/aaaaaaaaa)
if [ "$response" -ne 200 ]; then 
    echo "Error: No se pudo obtener la información de la API. Código de estado HTTP: $response" 
else data=$(curl -s https://jsonplaceholder.typicode.com/nonexistent) 
    echo "$data" | jq . 
fi

echo "//////////////////"


#Exitos!!