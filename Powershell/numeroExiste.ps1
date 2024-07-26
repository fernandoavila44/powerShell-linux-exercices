# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function existe($num){
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    if( $numeros -contains $num ){
        Write-Output "El numero si existe en el arreglo"
    }else{
        Write-Output "El numero no existe en el arreglo"
    }
}

$num = Read-Host "Ingrese un numero"
existe($num)