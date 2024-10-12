# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function ExisteNumero {
    param([int]$numero)
    
    if ($numeros -contains $numero) {
        Write-Output "El numero $numero existe en el arreglo."
    } else {
        Write-Output "El numero $numero no existe en el arreglo."
    }
}

ExisteNumero(4)
ExisteNumero(25)