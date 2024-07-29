# 1. Crear una funcion que me diga si un número es par o no
function EsPar {
    param (
        [int]$numero
    )
    
    if ($numero % 2 -eq 0) {
        return $true
    } else {
        return $false
    }
}

# Ejemplo de uso:
Es-Par -numero 4   # Devuelve True
Es-Par -numero 7   # Devuelve False

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

function ExisteNumero {
    param (
        [int]$numero,
        [int[]]$arreglo
    )
    
    return $arreglo -contains $numero
}

# Ejemplo de uso:
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Existe-Numero -numero 5 -arreglo $numeros   # Devuelve True
Existe-Numero -numero 11 -arreglo $numeros  # Devuelve False


# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

function SumaArreglo {
    param (
        [int[]]$arreglo
    )
    
    $suma = 0
    foreach ($numero in $arreglo) {
        $suma += $numero
    }
    return $suma
}

# Ejemplo de uso:
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Suma-Arreglo -arreglo $numeros   # Devuelve 55


# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

function SumaNumerosPares {
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

# Ejemplo de uso:
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Suma-Numeros-Pares -arreglo $numeros   # Devuelve 30


