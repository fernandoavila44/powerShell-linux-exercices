# 1. Crear una funcion que me diga si un número es par o no
# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

function ParImpar ($num) {
    if ($num % 2 -eq 0) {
     "es par"
    } else {
     "es impar"
    }
}
# ParImpar(10)
# ParImpar(15)


function FizzBuzz(){
    for ($i = 1; $i -lt 100; $i++) {
        if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
            "FizzBuzz"
        } elseif ($i % 3 -eq 0) {
            "Fizz"
        } elseif ($i % 5 -eq 0) {
            "Buzz"
        } else {
            $i
        }
    }
}

# FizzBuzz

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function ExisteNumero ($num, $numeros) {
    for ($i = 0; $i -lt $numeros.Length; $i++) {                                                                     
        if ($numeros[$i] -eq $num) {
           Write-Host "el numero si existe es el:" $num
           return
        } 
    }
    Write-Host "el numero no existe es el:" $num
}

# ExisteNumero 3 $numeros

function SumaNumeros($numeros) {
    $suma = 0
    for ($i = 0; $i -lt $numeros.Length; $i++) {                                                                     
        $suma += $numeros[$i]
    }
    Write-Host $suma 
}

# SumaNumeros $numeros

function SumaPares($numeros) {
    $suma = 0
    for ($i = 0; $i -lt $numeros.Length; $i++) {                                                                     
        if ($numeros[$i] % 2 -eq 0) {
            $suma += $numeros[$i]
        }
    }
    Write-Host $suma
}

SumaPares $numeros 