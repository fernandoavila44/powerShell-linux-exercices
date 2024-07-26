# 1. Crear una funcion que me diga si un número es par o no
function isPar($num){
    if($num%2 -eq 0){
        Write-Output "Es Par"
    }else{
        Write-Output "No es par"
    }
}

$num = Read-Host "Ingrese un numero"
isPar($num)

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
for( $i=0 ; $i -le 100; $i++){
    if( $i%5 -eq 0 -and  $i%3 -eq 0 ){
        Write-Output "FizzBuzz"
    }elseif( $i%3 -eq 0 ){
        Write-Output "Fizz"
    }elseif( $i%5 -eq 0 ){
        Write-Output "Buzz"
    }else{
        Write-Output $i
    }
}

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function existe($num){
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    if( $numeros -contains $num ){
        Write-Output "El numero si existe en el arreglo"
    }else{
        Write-Output "El numero no existe en el arreglo"
    }
}

$num = Read-Host "Ingrese un numero"
existe($num)

# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

function sumarArreglo(){
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $sum = 0

    for($i = 0; $i -lt $numeros.Length; $i++){
        $sum = $sum + $numeros[$i]
    }

    Write-Output "El resultado de la suma es: $sum"
}

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function sumarPares(){
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $sump = 0

    for($i = 0; $i -lt $numeros.Length; $i++){
        if($numeros[$i]%2 -eq 0){
            $sump = $sump + $numeros[$i]
        }
    }

    Write-Output "El resultado de la suma de numeros pares es: $sump"
}

sumarArreglo
sumarPares