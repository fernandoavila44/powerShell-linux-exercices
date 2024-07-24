# 1. Crear una funcion que me diga si un número es par o no

function Par{
    param ([int]$num)

    if ($num % 2 -eq 0) {
        return $true
    } else {
        return $false
    }
}

$num = 263
if (Par -num $num) {
    Write-Output "$num, es un numero par."
} else {
    Write-Output "$num, es un numero impar."
}


# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

for ($i = 1; $i -le 100; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Output "FizzBuzz"
    } elseif ($i % 3 -eq 0) {
        Write-Output "Fizz"
    } elseif ($i % 5 -eq 0) {
        Write-Output "Buzz"
    } else {
        Write-Output $i
    }
}


# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function ExisteNumero {
    param ([int]$numero,[int[]]$arreglo)

    if ($arreglo -contains $numero) {
        return $true
    } else {
        return $false
    }
}

$numero = 11
if (ExisteNumero -numero $numero -arreglo $numeros) {
    Write-Output "El numero $numero existe."
} else {
    Write-Output "El numero $numero no existe."
}


# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function Suma{
    param ([int[]]$arreglo)

    $suma = 0
    foreach ($numero in $arreglo) {
        $suma += $numero
    }
    return $suma
}

$sumaTotal = Suma -arreglo $numeros
Write-Output "La suma del arreglo es: $sumaTotal"


# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function SumaPar{
    param ([int[]]$arreglo)

    $suma = 0
    foreach ($numero in $arreglo) {
        if ($numero % 2 -eq 0) {
            $suma += $numero
        }
    }
    return $suma
}

$sumaTotal = SumaPar -arreglo $numeros
Write-Output "La suma es: $sumaTotal"


