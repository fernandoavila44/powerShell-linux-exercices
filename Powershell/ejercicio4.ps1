$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Creamos una función llamada Get-Sum
function Get-Sum {
    # Calculamos la suma de todos los numeros que se encuentran en nuestro arreglo
    $suma = $numeros | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    return $suma
}

Get-Sum