function Measure-SumaTotal {
    param (
        [int[]]$arreglo
    )
    return ($arreglo | Measure-Object -Sum).Sum
}


$arreglo = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$suma = Measure-SumaTotal -arreglo $arreglo
Write-Output "La suma total del arreglo es: $suma"  # La suma total del arreglo es: 55