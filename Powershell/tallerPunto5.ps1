function Get-Suma {
    param (
        [int[]]$array  
    )

    $sum = 0

    foreach ($num in $array) {
        if ($num % 2 -eq 0) {
            $sum += $num  
        }
    }

    return $sum
}

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

$totalPares = Get-Suma -array $numeros  # Llama a la función y guarda el resultado
Write-Host "La suma de los números pares en el arreglo es: $totalPares"
