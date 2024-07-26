# Definimos el arreglo de números
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Definimos una función llamada Get-Sum
function Get-Sum {
    # Calculamos la suma de todos los valores del arreglo
    $suma = $numeros | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    return $suma
}

# Ejemplo de uso: llamamos a la función Get-Sum
Get-Sum
