function Test-Par {
    param (
        [int]$numero
    )
    return $numero % 2 -eq 0
}


$numero = 4
Write-Output "Número: $numero, Es par: $(Test-Par -numero $numero)"  # Verdadero

$numero = 7
Write-Output "Número: $numero, Es par: $(Test-Par -numero $numero)"  # Falso