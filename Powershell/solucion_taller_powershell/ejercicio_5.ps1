# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function SumarNumerosPares($arregloNumeros) {    
    $acumulado = 0
    foreach ($numero in $arregloNumeros) {
        if ($numero % 2 -eq 0) {
            $acumulado += $numero
        }
    }

    return $acumulado
}

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SumarNumerosPares($numeros)