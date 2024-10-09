#1
function paroimpar {
    param([int]$numero)
    if ($numero % 2 -eq 0) {
        return "$numero es par."
    } else {
        return "$numero es impar."
    }
}

#2
for ($i = 1; $i -le 100; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Host "FizzBuzz"
    } elseif ($i % 3 -eq 0) {
        Write-Host "Fizz"
    } elseif ($i % 5 -eq 0) {
        Write-Host "Buzz"
    } else {
        Write-Host $i
    }
}


#3
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function existeNumero {
    param([int]$numero)

    if ($numeros -contains $numero) {
        return "$numero existe en el arreglo."
    } else {
        return "$numero no existe en el arreglo."
    }
}


#4
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function sumarTodos {
    $suma = 0
    foreach ($numero in $numeros) {
        $suma += $numero
    }
    return "La suma de todos los valores es: $suma"
}
Write-Host (sumarTodos)

#5
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function sumarPares {
    $suma = 0
    foreach ($numero in $numeros) {
        if ($numero % 2 -eq 0) {
            $suma += $numero
        }
    }
    return "La suma de los numeros pares es: $suma"
}
Write-Host (sumarPares)

