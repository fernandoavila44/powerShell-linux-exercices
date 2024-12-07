# Estudiante: Daniver Torres C23
# 1. Crear una funcion que me diga si un número es par o no
function numero_par{
    $numero = Read-Host "Por favor digita un número positivo"
    if($numero % 2 -eq 0){
        Write-Host "El número ingresado es par"
    }else{
        Write-Host "El número ingresado es impar"
    }
 }
 numero_par

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
for($i=0;$i -le 100; $i++){
    if( $i % 3 -eq 0 -and $i % 5 -eq 0){
        Write-Host "FizzBuzz"
    }elseif ($i % 5 -eq 0) {
        Write-Host "Buzz"
    }elseif($i % 3 -eq 0){
          Write-Host "Fizz"
    }else{
        Write-Host $i
    }
 }

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function buscar($parametro) {
       for($i=0; $i -le $numeros.Length;$i++){
            if($parametro -eq $numeros[$i]){
                    Write-Host "El número " $parametro " si existe en el array"
            }
         }
}
buscar(10)

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
function sumaArray {
    $suma = 0
    for($i=0; $i -le $numeros.Length;$i++){
        $suma = $suma + $numeros[$i]
     }
   Write-Host "La suma total del array de números es: " $suma   
}
sumaArray

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function SumaNumerosParses {
    $sumapares = 0
    for($i=0; $i -le $numeros.Length;$i++){
        if($numeros[$i] % 2 -eq 0){
            $sumapares = $sumapares + $numeros[$i]
        }
     }
     Write-Host "La suma de todos lo valores pares es " $sumapares
}
SumaNumerosParses