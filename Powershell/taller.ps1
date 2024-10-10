# 1. Crear una funcion que me diga si un número es par o no
function Es-Par {
    param (
        [int]$numero
    )
    
    if ($numero % 2 -eq 0) {
        Write-Host "$numero es un número par."
    } else {
        Write-Host "$numero es un número impar."
    }
}

Es-Par 8
Es-Par 7

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
function Existe-Numero {
    param (
        [int]$numero
    )

    if ($numeros -contains $numero) {
        return "$numero existe en el arreglo."
    } else {
        return "$numero no existe en el arreglo."
    }
}

Existe-Numero 5
Existe-Numero 15

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

function Suma-Total {
    return ($numeros | Measure-Object -Sum).Sum
}

Suma-Total

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

function Suma-Pares {
    $pares = $numeros | Where-Object { $_ % 2 -eq 0 }
    return ($pares | Measure-Object -Sum).Sum
}

Suma-Pares

