
Write-Host "1. Crear una funcion que me diga si un número es par o no"
$numero = Read-Host "Digite un numero: "
EsPar $numero

function EsPar {
    param (
        [int]$numero
    )

    if ($numero % 2 -eq 0) {
        Write-Output "El numero $numero es par."
    } else {
        Write-Output "El numero $numero no es par."
    }
}
