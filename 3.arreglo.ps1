# 3. Arreglo de numeros
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

Write-Host "3. Dado el siguiente arreglo, crear una funcion que me diga si el numero que pasamos por parametro
existe en el arreglo
a. numeros =[$numeros]"

$numero = Read-Host "Introduce un numero para verificar si existe en el arreglo:"
ExisteEnArreglo $numero $numeros

function ExisteEnArreglo {
    param (
        [int]$numero,
        [int[]]$arreglo
    )

    foreach ($num in $arreglo) {
        if ($num -eq $numero) {
            Write-Output "El numero $numero existe en el arreglo."
            return
        }
    }
    Write-Output "El numero $numero no existe en el arreglo."
}

