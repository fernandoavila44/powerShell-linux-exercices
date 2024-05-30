# 5. Función que devuelve la suma de los números pares del arreglo

Write-Host "5. Modificar la función anterior para que me devuelva solo la suma de los números pares"
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function SumaParesArreglo {
    param (
        [int[]]$arreglo
    )

    $sumaPares = 0
    foreach ($num in $arreglo) {
        if ($num % 2 -eq 0) {
            $sumaPares += $num
        }
    }
    Write-Output "La suma de los números pares del arreglo es: $sumaPares"
}

# Llamar a la función SumaParesArreglo
SumaParesArreglo $numeros