# 1. Crear una funcion que me diga si un número es par o no
function Es-Par {
    param (
        [int]$numero
    )
    if ($numero % 2 -eq 0) {
        Write-Output "$numero es un número par."
    } else {
        Write-Output "$numero es un número impar."
    }
}

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

For ($i = 1; $i -le 100; $i++) {
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

#Definir el arreglo
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Función para verificar si un número existe en el arreglo
function ExisteNumero {
    param (
        [int]$numero  # El número a buscar
    )

    if ($numeros -contains $numero) {
        Write-Host "El número $numero existe en el arreglo."
    } else {
        Write-Host "El número $numero no existe en el arreglo."
    }
}
# Ejemplo de uso de la función
ExisteNumero -numero 5  # Cambia el número para probar

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

# Definir el arreglo
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Función para devolver la suma de todos los valores del arreglo
function SumaTotal {
    $suma = 0  # Inicializar variable para la suma

    foreach ($numero in $numeros) {
        $suma += $numero  # Sumar cada valor al total
    }

    return $suma  # Devolver la suma total
}

# Ejemplo de uso de la función
$sumaTotal = SumaTotal
Write-Host "La suma total del arreglo es: $sumaTotal"

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

# Definir el arreglo
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Función para devolver la suma de solo los números pares del arreglo
function SumaPares {
    # Filtrar solo los números pares y luego sumar
    $suma = $numeros | Where-Object {$_ % 2 -eq 0} | Measure-Object -Sum
    return $suma.Sum  # Devolver el valor de la suma
}

# Ejemplo de uso de la función
$sumaTotalPares = SumaPares
Write-Host "La suma de los números pares del arreglo es: $sumaTotalPares"


