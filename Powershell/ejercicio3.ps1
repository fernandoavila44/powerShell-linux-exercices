$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Creamos una función llamada Find-Number
function Find-Number {
    param (
        [int]$numero
    )

    if ($numeros -contains $numero) {
        return "El numero $numero está en el arreglo."
    } else {
        return "El numero $numero no está en el arreglo."
    }
}
Find-Number -numero 1
Find-Number -numero 15