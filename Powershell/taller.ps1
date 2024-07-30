# 1. Crear una funcion que me diga si un número es par o no
function esPar{
    param (
        [int]$numero
    )

    if($numero -ne $null -and $numero -ne ""){
        if(($numero % 2) -eq 0) {
             Write-Output "El numero $numero es par"
        } else {
            Write-Output "El numero $numero es impar" 
        }
    } else {
      
        Write-Output "No se ha proporcionado ningun numero." 
    }
}
esPar 17

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

function fizzBuzz{
    param (
        [int]$numero
    )

    if($numero -ne $null -and $numero -ne ""){
        if(($numero % 3 ) -eq 0 -and ($numero % 5 ) -eq 0 ) {
             Write-Output "FizzBuzz"
        } elseif (($numero % 3 ) -eq 0) {
            Write-Output "Fizz" 
        } elseif (($numero % 5 ) -eq 0) {
            Write-Output "Buzz" 
        } else {
            Write-Output "El número no es divisible ni por 3 ni por 5 "
        }
    } else {
      
        Write-Output "No se ha proporcionado ningun numero." 
    }
}

fizzBuzz 43

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function numExiste{
    param (
        [int]$numero
    )
    $numrExist = $false
    if($numero -ne $null -and $numero -ne ""){
        foreach ($num in $numeros)
        {
            if($num -eq $numero){
                $numrExist = $true
            }
        }
        if($numrExist -eq $true){
            Write-Output "El numero $numero existe en el arreglo numeros" 
        } else {
            Write-Output "El numero $numero no existe en el arreglo numeros" 
        }

    } else {
      
        Write-Output "No se ha proporcionado ningun numero." 
    }
}

numExiste 28

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function sumNum{
    param (
        [int]$numero
    )

    $sum = 0

    foreach ($num in $numeros)
    {
        $sum = $sum + $num
        
    }
    Write-Output "La suma de todos los numeros es $sum" 
}
sumNum

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function sumNumPares{
    param (
        [int]$numero
    )

    $sum = 0

    foreach ($num in $numeros)
    {
        if(($num % 2 ) -eq 0){
            $sum = $sum + $num
        } 
        
    }
    Write-Output "La suma de todos los numeros pares es $sum" 
}
sumNumPares


