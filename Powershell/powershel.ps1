# 1. Crear una funcion que me diga si un número es par o no
function esPar{
    param (
        [int]$num
    )

    if($num -ne $null -and $num -ne ""){
        if(($num % 2) -eq 0) {
             Write-Output "El número $num es par"
        } else {
            Write-Output "El número $num no es par" 
        }
    } else {
      
        Write-Output "No se ha ingresado ningún número." 
    }
}

esPar 36

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
function Fizz_Buzz{
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
            Write-Output "El número no es divisible por 3 ni por 5 "
        }
    } else {
      
        Write-Output "No se ha ingresado ningún número." 
    }
}

Fizz_Buzz 24

# 3.Dado el siguiente arreglo (1, 2, 3, 4, 5, 6, 7, 8, 9, 10), crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function buscarEnArreglo{
    param (
        [int]$numero
    )
    $numExist = $false
    if($numero -ne $null -and $numero -ne ""){
        foreach ($num in $numeros)
        {
            if($num -eq $numero){
                $numExist = $true
            }
        }
        if($numExist -eq $true){
            Write-Output "El numero $numero existe en el arreglo" 
        } else {
            Write-Output "El numero $numero no existe en el arreglo" 
        }

    } else {
      
        Write-Output "No se ha ingresado ningun numero." 
    }
}

buscarEnArreglo 30


# 4. Dado el arreglo anterior (1, 2, 3, 4, 5, 6, 7, 8, 9, 10), crear una funcion que me devuelva la suma de todos los valores del arreglo
$arreglo = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function sumarArreglo{
    param (
        [int]$num
    )
    $sum = 0
    foreach ($num in $arreglo)
    {
        $sum = $sum + $num       
    }
    Write-Output "La suma de todos los numeros del arreglo es $sum" 
}
sumarArreglo

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function sumarParesArreglo{
    param (
        [int]$numeros
    )
    $sum = 0
    foreach ($num in $arreglo)
    {
        if(($num % 2 ) -eq 0){
            $sum = $sum + $num
        }        
    }
    Write-Output "La suma de todos los numeros pares del arreglo es $sum" 
}

sumarParesArreglo