# 1. Crear una funcion que me diga si un número es par o no
function Es_Par {
    param (
        [int]$numero
    )
    if ($numero % 2 -eq 0) {
        return "El número $numero es par."
    } else {
        return "El número $numero no es par."
    }
}
Es_Par -numero 4
Es_Par -numero 7

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

for ($i = 1; $i -le 100; $i++) {
    if ($i % 15 -eq 0) {
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

function Existe_Numero {
    param (
        [int]$numero,
        [int[]]$arreglo
    )
    if ($arreglo -contains $numero) {
        return "El número $numero existe en el arreglo."
    } else {
        return "El número $numero no existe en el arreglo."
    }
}
Existe_Numero -numero 5 -arreglo $numeros
Existe_Numero -numero 15 -arreglo $numeros

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

function Suma_Arreglo {
    param (
        [int[]]$arreglo
    )
    $suma = 0
    foreach ($numero in $arreglo) {
        $suma += $numero
    }
    return "La suma de todos los valores del arreglo es $suma."
}
Suma_Arreglo -arreglo $numeros

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function Suma_Pares {
    param (
        [int[]]$arreglo
    )
    $suma = 0
    foreach ($numero in $arreglo) {
        if ($numero % 2 -eq 0) {
            $suma += $numero
        }
    }
    return "La suma de los números pares del arreglo es $suma."
}
Suma_Pares -arreglo $numeros