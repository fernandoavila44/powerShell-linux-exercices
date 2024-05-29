$numero =Read-host "Digite por favor un número del 1 al 5"
switch ($numero) {

1 {
# 1 Ejercicio
$numero = Read-Host "Por favor, ingrese un numero"
$numero = [int]$numero

if ($numero % 2 -eq 0) {
    Write-Output "$numero es par."
} else {
    Write-Output "$numero es impar."
}
}
2{
# 2 Ejercicio
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
# 3 Ejercicio
3{
    $numeros = @(1,2,3,4,5,6,7,8,9,10)


    $numeros = @(1,2,3,4,5,6,7,8,9,10)
    $numero = Read-Host "Por favor ingrese un numero"
    $numero = [int]$numero
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
   
    VerificarNumeroEnArreglo $numero
}
# 4 Ejercicio
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


$sumaTotal = SumarArreglo -arreglo $numeros
Write-Output "La suma de todos los valores del arreglo es: $sumaTotal"

}
# 5 Ejercicio
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
