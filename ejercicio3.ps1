# Definimos el arreglo de números
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Definimos una función llamada Find-Number
function Find-Number {
    param (
        [int]$numero
    )

    # Verificamos si el número existe en el arreglo
    if ($numeros -contains $numero) {
        return "El número $numero existe en el arreglo."
    } else {
        return "El número $numero no existe en el arreglo."
    }
}
Find-Number -numero 5
Find-Number -numero 11

