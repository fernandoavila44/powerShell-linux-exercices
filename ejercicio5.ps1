# Definimos el arreglo de números
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Definimos una función llamada Get-SumOfEvenNumbers
function Get-SumOfEvenNumbers {
    # Filtramos los números pares y calculamos la suma
    $sumaPares = $numeros | Where-Object { $_ % 2 -eq 0 } | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    return $sumaPares
}

# Ejemplo de uso: llamamos a la función Get-SumOfEvenNumbers
Get-SumOfEvenNumbers
