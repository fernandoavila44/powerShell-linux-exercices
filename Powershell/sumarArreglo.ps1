# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo

function sumarArreglo(){
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $sum = 0

    for($i = 0; $i -lt $numeros.Length; $i++){
        $sum = $sum + $numeros[$i]
    }

    Write-Output "El resultado de la suma es: $sum"
}

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function sumarPares(){
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $sump = 0

    for($i = 0; $i -lt $numeros.Length; $i++){
        if($numeros[$i]%2 -eq 0){
            $sump = $sump + $numeros[$i]
        }
    }

    Write-Output "El resultado de la suma de numeros pares es: $sump"
}

sumarArreglo
sumarPares