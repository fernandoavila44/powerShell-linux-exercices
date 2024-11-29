# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
function SumaArreglo($arregloNumeros) {
    $acumulado = 0
    foreach ($numero in $arregloNumeros) {
        $acumulado += $numero
    }

    return $acumulado
}

$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SumaArreglo($numeros)