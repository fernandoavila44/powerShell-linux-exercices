#!/bin/bash

# Definición de una variable
nombre="Juan"
echo $nombre

# Definición de una variable numérica
edad=25
echo $edad

# Definición de una variable de solo lectura
readonly PI=3.1416
echo $PI

# Definición de un arreglo
numeros=(1 2 3 4 5)

echo "${numeros[@]}"

# Acceder a un elemento del arreglo
echo "El segundo número es ${numeros[1]}"

# Definir un arreglo vacío
arreglo_vacio=()

arreglo_vacio+=(1 2 3)

arregloObjetos=({id: 1, name: "andres"}, {id:2, name:"David"})

echo "${arregloObjetos[@]}"

echo "${arreglo_vacio[@]}"

# Definición de una función
saludar() {
    echo "¡Hola!"
}

# Llamar a la función
saludar

# Definición de una función con parámetros
saludar_persona() {
    echo "¡Hola, $1 $2 $3!"
}

# Llamar a la función con un parámetro
saludar_persona "María" "Garcia" "Pepita" "Otro"

# Loop for para iterar sobre un rango de números
# for i in {20..40}; do
#     echo "Número: $i"
# done

# Loop for para iterar sobre un arreglo
frutas=("manzana" "pera" "plátano")

# for fruta in "${frutas[@]}"; do
#     echo "Me gusta la $fruta"
# done

# Loop while

# contador=0
# while [ $contador -lt 15 ]; do
#     echo "Contador: $contador"
#     contador=$((contador + 1))
# done

# If statement
# edad=17
# if [ $edad -ge 18 ] 
# then
#     echo "Eres mayor de edad"
# else
#     echo "Eres menor de edad"
# fi

# If-else anidado
numero=0
if [ $numero -gt 0 ] 
then
    echo "El número es positivo"
elif [ $numero -lt 0 ]
then
    echo "El número es negativo"
else
    echo "El número es cero"
fi

# Switch-case
command=3
case "$command" in
    1)
        echo "imprime algo";;

    2)
        echo "imprime otra cosa" ;;
    *)
    echo "spotify-this-song" ;;
esac

# examples

SITES=("google.com" "github.com" "stackoverflow.com")

for site in "${SITES[@]}"; do
  if ping -c 1 "$site" &> /dev/null; then
    echo "$site is reachable"
  else
    echo "$site is not reachable"
  fi
done

PROCESS_NAME="nginx"

if pgrep "$PROCESS_NAME" > /dev/null; then
  echo "$PROCESS_NAME is running"
else
  echo "$PROCESS_NAME is not running"
fi