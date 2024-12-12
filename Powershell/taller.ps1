# 1. Crear una funcion que me diga si un número es par o no

function paroimpar{
    $numero = Read-Host "Digita un numero"
    if($numero % 2 -eq 0){
        Write-Host "El numero ingresado en par"
    }else{
        Write-Host "El numero no es par"
    }
}
numeropar

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

#for
for($i = 1; $i -le 100; $i++){
    if($i % 3 -eq 0 -and $i % 5 -eq 0){
        Write-Host "FizzBuzz"
    }elseif($i % 3 -eq 0){
        Write-Host "Fizz"
    }elseif($i % 5 -eq 0){
        Write-Host "Buzz"
    }else{
        Write-Host $i
    }
}

#en función

function fizzbuzz{
    for($i = 1; $i -le 100; $i++){
        if($i % 3 -eq 0 -and $i % 5 -eq 0){
            Write-Host "FizzBuzz"
        }elseif($i % 3 -eq 0){
            Write-Host "Fizz"
        }elseif($i % 5 -eq 0){
            Write-Host "Buzz"
        }else{
            Write-Host $i
        }
    }
}

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function existeciaenelarreglo{
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $numero = Read-Host "Digita un numero"
    if($numeros -contains $numero){
        Write-Host "El numero ingresado existe en el arreglo"
    }else{
        Write-Host "El numero no existe en el arreglo"
    }
}

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

function sumadelarreglo{
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $suma = 0
    foreach($numero in $numeros){
        $suma += $numero
    }
    Write-Host "La suma de los numeros del arreglo es: $suma"
}

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

function devolverpares{
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $suma = 0
    foreach($numero in $numeros){
        if($numero % 2 -eq 0){
            $suma += $numero
        }
    }
    Write-Host "La suma de los numeros es: $suma"
}