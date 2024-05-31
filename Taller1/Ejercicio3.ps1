# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
Write-Output "Ejercicio 3."
$numeros = @(1,2,3,4,5,6,7,8,9,10)
function numarreglo {
    param(
        [int]$num
    )
    if ($numeros -contains $num) {
        Write-Output "El numero: $num si existe en el arreglo."
    } else {
        Write-Output "El numero: $num no existe en el arreglo."
    }
}
$num = Read-Host "Ingrese un numero para validar si existe en el arreglo: "
numarreglo $num