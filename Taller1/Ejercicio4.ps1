# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
Write-Output "Ejercicio 4."
$sumaarreglo = 0
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
for ($i = 0; $i -lt $numeros.Length; $i++) {
    $sumaarreglo = $sumaarreglo + $numeros[$i]
}
Write-Output "La suma de los numeros en el arreglo es: $sumaarreglo"