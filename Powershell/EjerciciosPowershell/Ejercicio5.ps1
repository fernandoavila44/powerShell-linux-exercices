# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function SumarPares {
    param([int[]]$numeros)
    
    $suma = 0
    foreach ($numero in $numeros) {
        if ($numero % 2 -eq 0) {
            $suma += $numero
        }
    }
    return $suma
}

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SumarPares($numeros)

