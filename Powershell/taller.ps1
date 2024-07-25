# 1. Crear una funcion que me diga si un número es par o no

# Definimos una función llamada Es-Par
function Get-Par {
    # Definimos un parámetro de entrada llamado $numero, que es de tipo entero
    param (
        [int]$numero
    )

    # Utilizamos el operador módulo (%) para comprobar si el número es divisible por 2
    if ($numero % 2 -eq 0) {
        # Si el residuo de la división por 2 es 0, el número es par
        return "$numero es par."
    } else {
        # Si el residuo de la división por 2 no es 0, el número es impar
        return "$numero es impar."
    }
}

# Ejemplo de uso: llamamos a la función Es-Par con el número 4
Get-Par -numero 4
# Ejemplo de uso: llamamos a la función Es-Par con el número 7
Get-Par -numero 7



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

# Definimos el arreglo de números
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Definimos una función llamada Find-Number
function Find-Number {
    param (
        [int]$numero
    )

    # Verificamos si el número existe en el arreglo
    if ($numeros -contains $numero) {
        return "El número $numero existe en el arreglo."
    } else {
        return "El número $numero no existe en el arreglo."
    }
}
Find-Number -numero 5
Find-Number -numero 11



# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

# Definimos el arreglo de números
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Definimos una función llamada Get-Sum
function Get-Sum {
    # Calculamos la suma de todos los valores del arreglo
    $suma = $numeros | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    return $suma
}

# Ejemplo de uso: llamamos a la función Get-Sum
Get-Sum



# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

# Definimos el arreglo de números
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Definimos una función llamada Get-SumOfEvenNumbers
function Get-SumOfEvenNumbers {
    # Filtramos los números pares y calculamos la suma
    $sumaPares = $numeros | Where-Object { $_ % 2 -eq 0 } | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    return $sumaPares
}

# Ejemplo de uso: llamamos a la función Get-SumOfEvenNumbers
Get-SumOfEvenNumbers

