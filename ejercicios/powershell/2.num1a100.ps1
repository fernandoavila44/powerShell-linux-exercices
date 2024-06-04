

Write-Output "2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
a. Devuelve Fizz si el número es divisible por 3.
b. Devuelve Buzz si el número es divisible por 5.
c. Devuelve FizzBuzz si el número es divisible por 3 y por 5"
FizzBuzz
function FizzBuzz {
    for ($i = 1; $i -le 100; $i++) {
        if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
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

