#!/bin/bash

# Definición de una variable
# nombre="Juan"

# echo $nombre
# Definición de una variable numérica
# edad=25
# echo edad
# Definición de una variable de solo lectura
# readonly PI=3.1416

# Definición de un arreglo
# numeros=(1 2 3 4 5)

# Acceder a un elemento del arreglo
# echo "El segundo número es ${numeros[5]}"

# Definir un arreglo vacío
# arreglo_vacio=()

# arreglo_vacio+=(1, 2, 3)

# Definición de una función
# saludar() {
#     echo "¡Hola!"
# }

# Llamar a la función
# saludar

# Definición de una función con parámetros
saludar_persona() {
    echo "¡Hola, $1 $2!"
}

# Llamar a la función con un parámetro
# saludar_persona "María" "Garcia"

# Loop for para iterar sobre un rango de números
# for i in {1..5}; do
#     echo "Número: $i"
# done

# Loop for para iterar sobre un arreglo
# frutas=("manzana" "pera" "plátano")

# for fruta in "${frutas[@]}"; do
#     echo "Me gusta la $fruta"
# done

# Loop while

# contador=0
# while [ $contador -lt 5 ]; do
#     echo "Contador: $contador"
#     contador=$((contador + 1))
# done

# If statement
# edad=17
# if [ $edad -ge 18 ]; then
#     echo "Eres mayor de edad"
# else
#     echo "Eres menor de edad"
# fi

# If-else anidado
# numero=10
# if [ $numero -gt 0 ]; then
#     echo "El número es positivo"
# elif [ $numero -lt 0 ]; then
#     echo "El número es negativo"
# else
#     echo "El número es cero"
# fi

#Switch-case
# command="do-what-it-says1"
# case "$command" in
#     "my-tweets")
#         echo "imprime algo";;

#     "do-what-it-says")
#         echo "imprime otra cosa" ;;
#     *)
#     echo "spotify-this-song" ;;
# esac


