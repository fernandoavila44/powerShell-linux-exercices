# 1. Crear una funcion que me diga si un número es par o no
function parImpar {
    param ($numero)
    if (($numero % 2) -eq 0) {
        Write-Output "$numero es par"
    }else{
        Write-Output "$numero es impar"
    }    
}

parImpar 123





# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

function fizzBuzz {
    
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

fizzBuzz


# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function existe(){
    param($numero)
    
    if([int]$numero -or $numero -eq 0){
        if ($numeros -contains $numero){
            Write-Output "El numero $numero existe en el arreglo."
        }else{
            Write-Output "El numero $numero no existe en el arreglo."
        }
    }
}
existe 4
existe 11


# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo


$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function Suma {
    $suma = $numeros | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    return $suma
}

Write-Host "la suma de los numeros del arreglo es:"; Suma


# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function sumaPares {
    $total = 0
    for ($i = 0; $i -lt $numeros.Length; $i++) {
        if (($numeros[$i] % 2) -eq 0) {
            $total = $total + $numeros[$i];
        }
    }
    Write-Output "La suma de los numeros pares del arreglo es $total" 
}
sumaPares