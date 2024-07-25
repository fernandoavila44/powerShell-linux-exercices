# 1. Crear una funcion que me diga si un número es par o no
function comprobarNumero {
    param ($numero)
    if (($numero % 2) -eq 0) {
        Write-Output "$numero es par"
    }else{
        Write-Output "$numero es impar"
    }    
}
comprobarNumero 10

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
function fizzBuzz {
    param ($numero)    
    $dPor3 = $numero % 3;
    $dPor5 = $numero % 5;
    if($dPor3 -eq 0 -and $dPor5 -eq 0){
        return "FizzBuzz"
    }elseif($dPor3 -eq 0){
        return "Fizz"
    }elseif($dPor5 -eq 0){
        return "Buzz"
    }else{
        return $numero;
    }
}
for ($i = 1; $i -le 100; $i++) {
    $fB = fizzBuzz $i;
    Write-Output $fB
}

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
function verificarNumero(){
    param($numero)
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    if([int]$numero -or $numero -eq 0){
        if ($numeros -contains $numero){
            Write-Output "El numero $numero existe en el arreglo."
        }else{
            Write-Output "El numero $numero no existe en el arreglo."
        }
    }
}
$numeroConsola = Read-Host "Introduce un numero para verificar";
verificarNumero $numeroConsola;

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
function sumarNumeroArreglo {
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $total = 0
    for ($i = 0; $i -lt $numeros.Length; $i++) {
        $total = $total + $numeros[$i];
    }
    Write-Output "El total es $total"    
}
sumarNumeroArreglo

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
function sumarNumeroArregloPares {
    $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    $total = 0
    for ($i = 0; $i -lt $numeros.Length; $i++) {
        if (($numeros[$i] % 2) -eq 0) {
            $total = $total + $numeros[$i];
        }
    }
    Write-Output "El total es $total" 
}
sumarNumeroArregloPares