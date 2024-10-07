 #!/bin/bash
 # Utilizar la siguiente API https://jsonplaceholder.typicode.com/

    #1. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/users 
    # y utiliza jq para formatear y mostrar la lista de usuarios.

        #echo "Cargando datos..."
        #response=$(curl https://jsonplaceholder.typicode.com/users)
         #echo "Datos cargados:"
        #echo "$response" | jq .

    #2. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts 
    #y utiliza jq para filtrar y mostrar solo los títulos de las publicaciones.

        # echo "Cargando datos..."
            # response=$(curl -s https://jsonplaceholder.typicode.com/posts)

           #  echo "$response" | jq -c '.[]' | while read -r title; do
           # titulo=$(echo "$title" | jq -r '.title')
           #  echo "Titulo: $titulo"
           # done

        
    #3. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/posts 
    #y utiliza jq para encontrar y mostrar la publicación con un id específico.

           #echo "Cargando datos..."
            #id=2 
            #response=$(curl -s https://jsonplaceholder.typicode.com/posts)
            #titulo=$(echo "$response" | jq -r --arg id "$id" '.[] | select(.id == ($id | tonumber)) | .title')
                #echo "Titulo: $titulo"
           

    #4. Utiliza curl para enviar un nuevo post a la API jsonplaceholder.typicode.com/posts. 
    #Luego, utiliza jq para mostrar la respuesta del servidor.
        
 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar y manejar el error, mostrando un mensaje personalizado en caso de fallo.

 #Exitos!!