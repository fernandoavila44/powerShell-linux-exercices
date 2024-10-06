function Get-Suma {
    param (
        [int[]]$array
    )
    $sum = 0
    foreach ($num in $array) {
        $sum += $num
    }

    return $sum 
}

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)  

$total = Get-Suma -array $numeros
Write-Host "La suma de todos los valores en el arreglo es: $total"
