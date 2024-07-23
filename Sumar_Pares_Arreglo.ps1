function Measure-SumaPares {
    param (
        [int[]]$arreglo
    )
    return ($arreglo | Where-Object { $_ % 2 -eq 0 } | Measure-Object -Sum).Sum
}


$arreglo = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$suma = Measure-SumaPares -arreglo $arreglo
Write-Output "La suma de los números pares del arreglo es: $suma"  # La suma de los números pares del arreglo es: 30