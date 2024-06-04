
Write-Host "4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo"
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


SumaArreglo $numeros
function SumaArreglo {
    param (
        [int[]]$arreglo
    )

    $suma = 0
    foreach ($num in $arreglo) {
        $suma += $num
    }
    Write-Output "La suma de todos los números del arreglo es: $suma"
}



