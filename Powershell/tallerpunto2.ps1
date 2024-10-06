for ($i = 1; $i -le 100; $i++) {
    # Revisa si el número es divisible por 3 y 5
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Host "FizzBuzz"
         }

    # Revisa si el número es divisible solo por 3
    elseif ($i % 3 -eq 0) {
        Write-Host "Fizz"
         }

    # Revisa si el número es divisible solo por 5
    elseif ($i % 5 -eq 0) {
        Write-Host "Buzz"
         }
    # Si no es divisible ni por 3 ni por 5, imprime el número
    else {
        Write-Host $i
         }
}
