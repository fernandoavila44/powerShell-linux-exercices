$numero =Read-host "DIGITE DEL 1 AL 5 PARA EVALAUAR EL EJERCICIO"
switch ($numero) {

1 {
# 1 
$numero = Read-Host "Por favor, ingrese un numero"
$numero = [int]$numero

if ($numero % 2 -eq 0) {
    Write-Output " el numero $numero es par."
} else {
    Write-Output " el numero es $numero es impar."
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


function VerificarNumeroEnArreglo {
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

VerificarNumeroEnArreglo $numero


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

# Llamar a la función para calcular la suma de los valores del arreglo
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