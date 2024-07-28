# 1. Crear una funcion que me diga si un número es par o no
function Es_Par {
    param(
        [int]$number
    )
    if ($number % 2 -eq 0){
        return "$number es un número par"
    } else {
        return "$number no es un número par"
    }
}
$resultado = Es_Par
Write-Output $resultado

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
function FizzBuzz {
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
}
FizzBuzz


# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function Exist_Number {
    param (
        [int]$numero
    )
    
    if ($numeros -contains $numero) {
        return "$numero existe en el arreglo."
    } else {
        return "$numero no existe en el arreglo."
    }
}
Exist_Number 3
Exist_Number 20

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function Sum_Array {
    param (
        [int[]]$array
    )

    $sum = 0
    foreach ($num in $array){
        $sum += $num
}

return $sum
}
$sum = Sum_Array -array $numeros
Write-Output "La suma de los valores del arrego es: $sum"


# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function Sum_Pares {
    param (
        [int[]]$array
    )
    $sum = 0
foreach ($num in $array){
    if ($num % 2 -eq 0) {
        $sum += $num
    }
}
return $sum
    
}
$sum = Sum_Pares -array $numeros
Write-Output "La suma de los números pares del arreglo es: $sum"
