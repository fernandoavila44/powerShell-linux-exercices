# 1. Crear una funcion que me diga si un número es par o no

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares


$numero =Read-host "DIGITE DEL 1 AL 5 PARA EVALAUAR EL EJERCICIO"
switch ($numero) {

1 {
# 1 
$numero = Read-Host "Por favor, ingrese un numero"
$numero = [int]$numero

if ($numero % 2 -eq 0) {
    Write-Output "$numero es par."
} else {
    Write-Output "$numero es impar."
}
}
2{
# 2
for ($i = 1; $i -le 100; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Output "FizzBuzz"
    }
    elseif ($i % 3 -eq 0) {
        Write-Output "Fizz"
    }
    elseif ($i % 5 -eq 0) {
        Write-Output "Buzz"
    }
    else {
        Write-Output $i
    }
}
}
# 3
3{
$numeros = @(1,2,3,4,5,6,7,8,9,10)


function VerificarNumero {
    param(
        [int]$numero
    )

    if ($numeros -contains $numero) {
        Write-Output "El numero $numero existe en el arreglo."
    } else {
        Write-Output "El numero $numero NO existe en el arreglo."
    }
}
$numero = Read-Host "Ingrese un numero"
# $numero = [int]$numero  
VerificarNumero $numero

}
# 4
4{

$numeros = @(1,2,3,4,5,6,7,8,9,10)


function SumarArreglo {
    param(
        [int[]]$arreglo
    )

    $suma = 0
    foreach ($numero in $arreglo) {
        $suma += $numero
    }

    return $suma
}


$sumaTotal = SumarArreglo -arreglo $numeros
Write-Output "La suma de todos los valores del arreglo es: $sumaTotal"
}
# 5
5{

function SumarNumerosPares {
    param(
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


$sumaPares = SumarNumerosPares -arreglo $numeros
Write-Output "La suma de los numeros pares del arreglo es: $sumaPares"
}
Default {}
}