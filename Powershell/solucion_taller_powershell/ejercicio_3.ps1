# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

function EncontrarNumero($buscarNumero) {
    foreach ($numero in $numeros) {
        if ($numero -eq $buscarNumero) {
            $respuestaBool = $true
            break
        }
    }

    if ($respuestaBool) {
        $respuesta = "El numero $buscarNumero existe en el arreglo"
    }
    else {
        $respuesta = "El numero $buscarNumero no existe en el arreglo"
    }

    return $respuesta
}

EncontrarNumero(4)
EncontrarNumero(25)