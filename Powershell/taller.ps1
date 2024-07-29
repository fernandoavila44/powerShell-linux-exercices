# 1. Crear una funcion que me diga si un número es par o no
Write-Host "Punto 1"
function ParImpar {
    param (
        [int]$numero 
     )
        if ($numero %2 -eq 0){
        Write-Host "El $numero es par"
    }else {
        Write-Host "El $numero es impar"
    }       
}

# Llamada a la función con un número específico
$numero = Read-Host "Introduce un número"
ParImpar -numero $numero

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
Write-Host ""
Write-Host "Punto 2"

for ($i = 1; $i -le 100; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
       Write-Host "FizzBuzz"
    } elseif ($i % 3 -eq 0) {
        Write-Host "Fizz"
    } elseif ($i % 5 -eq 0) {
        Write-Host "Buzz"
    } else {
        Write-Host "$i"
    }
}

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Write-Host ""
Write-Host "Punto 3"

function BuscarNumeroEnArreglo {
    param (
        $arreglo,    
        $numero4

    )

        if ($arreglo -contains $numero){
            Write-Host "El numero: $numero esta en el arreglo"

        }else{
            Write-Host "El numero: $numero no esta en el arreglo"
        }
    
}
     
    $numero = 11
    $arreglo= @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    BuscarNumeroEnArreglo -numero $numero -arreglo $arreglo 


# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
Write-Host ""
Write-Host "Punto 4"
function SumaEnArreglo {
    param (
        $arreglo 
        
    )
    $suma = ($arreglo | Measure-Object -Sum).Sum
   
    Write-Host "La suma de todos los valores del arreglo es: $suma"

}
     
$arreglo= @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SumaEnArreglo -arreglo $arreglo


# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
Write-Host ""
Write-Host "Punto 5"


function SumaEnArregloPares {
    param (
        $arreglo 
        
    )
    # Filtrar los números pares
    $pares = $arreglo | Where-Object { $_ % 2 -eq 0 }
    
    # Calcular la suma de los números pares
    $sumaPares = ($pares | Measure-Object -Sum).Sum
    
    # Imprimir el resultado
    Write-Host "La suma de los números pares en el arreglo es: $sumaPares"
}
     
$arreglo= @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SumaEnArregloPares -arreglo $arreglo
