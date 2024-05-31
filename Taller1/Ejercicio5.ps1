# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
Write-Output "Ejercicio 5."
$sumapares = 0
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
for ($i = 0; $i -lt $numeros.Length; $i++) {
    if ($numeros[$i] % 2 -eq 0) {
        $sumapares = $sumapares + $numeros[$i]
    }
}
Write-Output "La suma de los numeros pares en el arreglo es: $sumapares"