# 1. Crear una funcion que me diga si un número es par o no

# $num = Read-Host "Escriba un numero"
# function esPar ($param){
#     if ($param % 2 -eq 0) {
#         Write-Host "El numero es par"
#     } else {
#         Write-Host "El numero es impar"
#     }
# }

# esPar($num)

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

# for ($i = 1; $i -le 100; $i++) {
#     if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
#         Write-Host "FizzBuzz"
#     } elseif ($i % 3 -eq 0) {
#         Write-Host "Fizz"
#     } elseif ($i % 5 -eq 0) {
#         Write-Host "Buzz"
#     }else{
#         Write-Host $i
#     }
# }

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# $num = Read-Host "Escriba un numero"

# function arreglo ($param1, $param2){
#     for ($i = 0; $i -le $param2.Length; $i++) {
#         if ($param1 -eq $param2[$i]) {
#             Write-Host $param1 "esta en el arreglo"
#             return
#         } 
#     } 
#     Write-Host $param1 "no esta en el arreglo"
# }

# arreglo $num $numeros

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# function sumar($param1) {
#     foreach ($i in $param1){
#         $suma = ($suma + $i)
#     }
#     return Write-Host "La suma del arreglo es:" $suma
# }

# sumar($numeros)

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# function sumarPares($param1) {
#     foreach ($i in $param1){
#         if ($i % 2 -eq 0) {
#             $suma = ($suma + $i)
#         }
#     }
#     return Write-Host "La suma del arreglo es:" $suma
# }

# sumarPares($numeros)