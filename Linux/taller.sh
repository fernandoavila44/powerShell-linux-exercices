 #!/bin/bash
 
 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/



#SOLUCION DE EJERCICIOS

 #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users y utiliza jq para formatear y mostrar la lista de usuarios.
echo " " 
echo "RESPUESTA PUNTO NRO 1 ****************************************************************************"
echo " "

# Obtenemos los datos de la Api"
response=$(curl https://jsonplaceholder.typicode.com/users)

#Imprimo respuesta
#echo $response

#echo "Parseando el contenido"

#Imprimo respuesta en formato JSON
#echo "$response" | jq .

echo " "

#Capturamos los nombres de usuarios
nombresUsuarios=$(echo "$response" | jq -r '.[].username')

echo " "

#Mostramos la lista de usuarios
echo "Lista de Usuarios"
echo " "
#Con la variable entre comillas obtengo toda la lista de nombres
echo "$nombresUsuarios"

echo " "

 #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.

echo "RESPUESTA PUNTO NRO 2 ****************************************************************************"

echo " "

#echo "Obtenemos los datos de la Api"

response=$(curl https://jsonplaceholder.typicode.com/posts)

#Imprimo respuesta
#echo $response

#echo "Parseando el contenido"

#Imprimo respuesta en formato JSON
#echo "$response" | jq .
echo " "
#Capturamos los titulos de usuarios
titulos=$(echo "$response" | jq -r '.[].title')

echo " "

#Con la variable entre comillas obtengo toda la lista de titulos
echo "Los siguientes son los titulos de las publicaciones: "
echo " "
echo "$titulos "
echo " "

 #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts y utiliza jq para encontrar y mostrar la publicación con un id específico.

echo "RESPUESTA PUNTO NRO 3 ****************************************************************************"
echo " "

#Le asigno a mi variable el id 3
miId=3

#Defino mi función consultar por ID
consultarPorId() {
    idRecibido=$1
respuestaEspecifica=$(curl https://jsonplaceholder.typicode.com/posts/$1)

#echo "Parseando el contenido con titulos"
resConsulta=$(echo "$respuestaEspecifica" | jq -r '.title')

#Imprimo los datos obtenidos de la consulta
echo " "
echo "La consulta por el ID $miId arrojo los siguientes datos:"
echo " "
echo "$resConsulta"

}

consultarPorId $miId

echo " "
 
 #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. Luego, utiliza jq para mostrar la respuesta del servidor.
 

echo "RESPUESTA PUNTO NRO 4 ****************************************************************************" 

echo " "

 # Creando el nuevo post y agragando datos personalizados
nuevoP='{"title": "Canciones anos 80", "body": "Coleccion de canciones crossover", "userId": 1}'

# Hacemos la solicitud
respuesta=$(curl -X POST -H "Content-Type: application/json" -d "$nuevoP" "https://jsonplaceholder.typicode.com/posts")
echo " "
# Mostramos la respuesta
echo "Respuesta del servidor:"
echo "$respuesta"
 
#Capturamos los datos de Id y Titulo con jq
postId=$(echo "$respuesta" | jq -r '.id')
postTitulo=$(echo "$respuesta" | jq -r '.title')

# Mostramos los datos de ID y Titulo
echo "Los datos de ID y Titulo del nuevo post son:"
echo " "
echo "El ID es: $postId"
echo "El Título es: $postTitulo"
echo " "

 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

echo "RESPUESTA PUNTO NRO 5 ****************************************************************************"
echo " "

# Hacemos la solicitud GET al endpoint "artistas", que en la realidad no existe

respSolicitud=$(curl -s "https://jsonplaceholder.typicode.com/artistas")

echo "Consultando por el endpoint "artistas""

# Validamos si se ha encontrado algún campo "error" con el fin de mostrar el mensaje correspondiente
echo " " 
if [ "$respSolicitud" = "{}" ]; then
    echo "Ha ocurrido un error en la consulta: la respuesta está vacía"
else
    echo "Respuesta exitosa:"
    echo "$respSolicitud"
fi

 #Exitos!!