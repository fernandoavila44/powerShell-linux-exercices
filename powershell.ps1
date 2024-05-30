# 1. Crear una funcion que me diga si un número es par o no
$numero = Read-Host "Ingrese un numero"
if ($numero % 2 -eq 0) {
    Write-Host "El numero es par"
} else {
    Write-Host "El numero es impar"
}
# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

for ($i = 1; $i -le 100; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Host "FizzBuzz"
    } elseif ($i % 3 -eq 0) {
        Write-Host "Fizz"
    } elseif ($i % 5 -eq 0) {
        Write-Host "Buzz"
    } else {
        Write-Host $i
    }
}
 

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$numero = Read-Host "Ingrese un numero"
if ($numeros -contains $numero) {
    Write-Host "El numero $numero existe en el arreglo"
} else {
    Write-Host "El numero $numero no existe en el arreglo"
}

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function SumarArray {
    param (
        [int[]]$arreglo
    )
    $suma = 0
    foreach ($numero in $arreglo) {
        $suma += $numero
    }
   return $suma
}

$total = SumarArray $numeros
Write-Host "La suma del arreglo es: $total"


# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function SumarPares {
    param (
        [int[]]$arreglo
    )
    $suma = 0
    foreach ($numero in $arreglo) {
        if ($numero % 2 -eq 0) {
            $suma += $numero
        }
    }
   return $suma
}

$total = SumarPares $numeros
Write-Host "La suma de los numeros pares del arreglo es: $total"



