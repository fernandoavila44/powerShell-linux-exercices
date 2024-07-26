# 1. Crear una funcion que me diga si un número es par o no
function isPar($num){
    if($num%2 -eq 0){
        Write-Output "Es Par"
    }else{
        Write-Output "No es par"
    }
}

$num = Read-Host "Ingrese un numero"
isPar($num)