# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

function SumarArreglo {
    param([int[]]$numeros)
    
    $suma = 0
    foreach ($numero in $numeros) {
        $suma += $numero
    }
    return $suma
}

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SumarArreglo($numeros)