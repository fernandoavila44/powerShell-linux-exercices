# 1. Crear una funcion que me diga si un número es par o no
function Es-Par {
    param ($numero)
    if ($numero % 2 -eq 0) {
        return "$numero es Par"
    } else {
        return "$numero es Impar"
    }
}

# asi verificamos en consola si es correcto o no el resultado
Write-Output (Es-Par 6)
Write-Output (Es-Par 1)