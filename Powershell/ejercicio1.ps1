function Get-Par {

    #Le pedidmos al usuario ingresar cualquier numero para saber si es par o impar
    [int]$numero = Read-Host "Ingresa cualquier numero"
  
    #Con condicional if averiguamos si es par o impar.
    if ($numero % 2 -eq 0) {
        return "$numero es par."
    } else {
        return "$numero es impar."
    }
}

Get-Par