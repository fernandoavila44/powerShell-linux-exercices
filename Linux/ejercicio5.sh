 #5. Realiza una solicitud GET a la API jsonplaceholder.typicode.com/"cualquier
 # endpoint" que devuelva un error intencionalmente. Utiliza jq para detectar
 # y manejar el error, mostrando un mensaje personalizado en caso de fallo.


curl -s https://jsonplaceholder.typicode.com/invalid_endpoint | jq 'if . == {} then "Error: Endpoint no válido verifica la informacion" else . end'