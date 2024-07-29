# Ejercicio 1: Crear una función que me diga si un número es par o no
function EsPar($numero) {
    return $numero % 2 -eq 0
}

# Ejercicio 2: Programa FizzBuzz
function FizzBuzz() {
    for ($i = 1; $i -le 100; $i++) {
        if ($i % 15 -eq 0) {
            Write-Output "FizzBuzz"
        } elseif ($i % 3 -eq 0) {
            Write-Output "Fizz"
        } elseif ($i % 5 -eq 0) {
            Write-Output "Buzz"
        } else {
            Write-Output $i
        }
    }
}

# Ejercicio 3: Función que me diga si un número existe en el arreglo
$numero = 1,2,3,4,5,6,7,8,9,10

function ExisteEnArreglo($numero, $arreglo) {
    return $arreglo -contains $numero
}

# Ejercicio 4: Función que me devuelva la suma de todos los valores del arreglo
function SumaArreglo($arreglo) {
    $suma = 0
    foreach ($numero in $arreglo) {
        $suma += $numero
    }
    return $suma
}

# Ejercicio 5: Función que me devuelva la suma de los números pares
function SumaPares($arreglo) {
    $suma = 0
    foreach ($numero in $arreglo) {
        if ($numero % 2 -eq 0) {
            $suma += $numero
        }
    }
    return $suma
}

