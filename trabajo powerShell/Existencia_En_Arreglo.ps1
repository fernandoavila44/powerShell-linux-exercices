function Test-ExistenciaEnArreglo {
    param (
        [int]$numero,
        [int[]]$arreglo
    )
    return $arreglo -contains $numero
}


$arreglo = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$numero = 4
if (Test-ExistenciaEnArreglo -numero $numero -arreglo $arreglo) {
    Write-Output "El número $numero está en el arreglo."  # El número 4 está en el arreglo.
} else {
    Write-Output "El número $numero no está en el arreglo."  # El número 4 no está en el arreglo.
}

$numero = 11
if (Test-ExistenciaEnArreglo -numero $numero -arreglo $arreglo) {
    Write-Output "El número $numero está en el arreglo."  # El número 11 está en el arreglo.
} else {
    Write-Output "El número $numero no está en el arreglo."  # El número 11 no está en el arreglo.
}