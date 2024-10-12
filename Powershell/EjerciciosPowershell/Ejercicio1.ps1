# 1. Crear una funcion que me diga si un número es par o no

function EsPar {
    param([int]$numero)
    
    if ($numero % 2 -eq 0) {
        Write-Output "$numero es par"
    } else {
        Write-Output "$numero no es par"
    }
}

EsPar(2)
EsPar(13)