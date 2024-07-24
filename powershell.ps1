# 1. Crear una funcion que me diga si un número es par o no
function NumeroPar($Par) {
$Resultado = $Par % 2
 If ($Resultado -eq 0) {
    Write-Output "El numero $Par es par"
 } 
 else {
    Write-Output "El numero $Par no es par"
 } 
}
# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
function divisible3y5 {
    for ($i = 0; $i -le 100; $i++) {
        $Div3 = $i % 3
        $Div5 = $i % 5
        if ($Div3 -eq 0 -and $Div5 -eq 0) {
            Write-Output "FizzBuzz"
        }
        elseif ($Div3 -eq 0 -and $Div5 -ne 0) {
            Write-Output "Fizz"
        }
        elseif ($Div3 -ne 0 -and $Div5 -eq 0) {
            Write-Output "Buzz"
        } 
        else {
            Write-Output $i
        }
    }
    }

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function ElNumeroExiste ($Pepe) {
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    foreach ($i in $numeros) {
        if ($pepe -eq $i) {
           $Existe = 1
           Write-Output "El numero $pepe existe en el arreglo"
           break 
        }
    }
    if ($Existe -ne 1){
        Write-Output "El numero $pepe no existe en el arreglo"
    }

}

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares

#Prueba

#NumeroPar 10
#divisible3y5
ElNumeroExiste 5