Clear-Host

###Taller PowerShell

# 1. Crear una funcion que me diga si un número es par o no

$num = Read-Host "Digite un numero: "

if ($num % 2 -eq 0) {
    Write-Host "El numero es par"
}else {
    Write-Host "El numero es impar"
}

#----------------------------------------------------------------------

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

for ($i = 1; $i -lt 101; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Host "FizzBuzz"
    }elseif ($i % 3 -eq 0) {
        Write-Host "Fizz"
    }elseif ($i % 5 -eq 0) {
        Write-Host "Buzz"
    }else {
        Write-Host "$i"
    }
}

#----------------------------------------------------------------------

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo

$num = Read-Host "Digite el numero: "
$j = "True"
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
for ($i = 0; $i -lt $numeros.Length; $i++) {
    if ($num -eq $numeros[$i]) {
        Write-Host "El numero se encuentra en el arreglo"
        $j = ""
        break
    }
}
if ($j) {
    Write-Host "El numero NO se encuentra en el arreglo"
}

#----------------------------------------------------------------------

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

$suma = 0
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
for ($i = 0; $i -lt $numeros.Length; $i++) {
    $suma = $suma + $numeros[$i]
}
Write-Host "La suma de los numeros del arreglo es: $suma"

#----------------------------------------------------------------------

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

$suma = 0
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
for ($i = 0; $i -lt $numeros.Length; $i++) {
    if ($numeros[$i] % 2 -eq 0) {
        $suma = $suma + $numeros[$i]
    }
}
Write-Host "La suma de los numeros pares del arreglo es: $suma"