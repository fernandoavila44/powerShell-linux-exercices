# 1. Crear una funcion que me diga si un número es par o no
Write-Output "Ejercicio 1."
$numero = Read-Host "Por favor digite un numero: "

if ($numero % 2 -eq 0) {
    Write-Output "El numero: $numero es par"
}else {
    Write-Output "El numero: $numero es impar"
}