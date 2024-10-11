# 1. Crear una funcion que me diga si un número es par o no
Write-Host "Ejercicio 1"
esPar
function esPar {
    $dato = Read-Host "Ingresa un numero"
    if ($dato % 2 -eq 0) {
        Write-Host 'El numero ingresado es par'
    }
    else {
        Write-Host 'El numero ingreado es impar'
    }
}

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
Write-Host "Ejercicio 2"
imprimirUnoACien
function imprimirUnoACien {
    for ($i = 1; $i -le 100; $i++) {
        if ($i % 3 -eq 0) {
            if ($i % 5 -eq 0) {
                Write-Host $i" FizzBuzz"
            }
            else {
                Write-Host $i" Fizz"
            }
        }
        elseif ($i % 5 -eq 0) {
            Write-Host $i" Buzz"
        }
        else {
            Write-Host $i
        }
    }
    
}

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Write-Host "Ejercicio 3"
$aux = Read-Host "Ingresa un numero"
existeEnElArreglo($aux)
function existeEnElArreglo ($a) {
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

    foreach ($i in $numeros) {
        if ($a -eq $i) {
            return  Write-Host "El numero ingresado existe en el arreglo"
        }   
    }
    Write-Host "El numero ingreado no existe en el arreglo"
}

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
Write-Host "Ejercicio 4"
sumarValoresDeUnArreglo

function sumarValoresDeUnArreglo {
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $acumulado = 0
    for ($i = 0; $i -lt $numeros.Length; $i++) {
        $acumulado = $acumulado + $numeros[$i]
    }

    Write-Host "La suma de los valores del arreglo es: "$acumulado
    
}
# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
Write-Host "Ejercicio 5"
sumarNumerosPares

function sumarNumerosPares {
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $acumulado = 0;
    for ($i = 0; $i -lt $numeros.Length; $i++) {
        if ($numeros[$i] % 2 -eq 0) {
            $acumulado = $acumulado + $numeros[$i]
        }
    }
    Write-Host "La suma de los numero pares que se encuentran en el arreglo es: "$acumulado
    
}


