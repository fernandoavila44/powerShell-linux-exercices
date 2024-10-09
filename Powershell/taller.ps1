# 1. Crear una funcion que me diga si un número es par o no
$numero = Read-Host "Introduce un número"
Verificar_Paridad($numero);

Function Verificar_Paridad {    
 if ($numero % 2 -eq 0) {
        Write-Host "$numero es un número par."
    } else {
        Write-Host "$numero es un número impar."
    }
}

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.


For ($i = 1; $i -le 100; $i++) {
    if (($i % 3 -eq 0) -and ($i % 5 -eq 0)) {
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

$numero = Read-Host "Introduce un número"
Existe_Numero($numero);
Sumar_Arreglo($suma);

Function Existe_Numero {

    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

    param (
        [int]$numero
    )

    if ($numeros -contains $numero) {
        Write-Host "El número $numero existe en el arreglo."
    } else {
        Write-Host "El número $numero no existe en el arreglo."
    }
   
}


# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

Function Sumar_Arreglo {
    param (
        [int[]]$numeros
    )

    $suma = 0

    foreach ($numero in $numeros) {
        $suma += $numero
    }
    
    return $suma
}

$sumaTotal = Sumar-Arreglo $numeros
Write-Host "La suma de los valores del arreglo es: $sumaTotal"
# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

Function Sumar_Pares {
    param (
        [int[]]$numeros
    )

    $sumaPares = 0

    foreach ($numero in $numeros) {
        if ($numero % 2 -eq 0) {
            $sumaPares += $numero
        }
    }
   
    return $sumaPares
}

$sumaTotalPares = Sumar-Pares $numeros
Write-Host "La suma de los números pares del arreglo es: $sumaTotalPares"

