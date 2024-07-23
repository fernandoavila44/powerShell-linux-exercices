function Invoke-FizzBuzz {
    param (
        [int]$limite
    )
    for ($i = 1; $i -le $limite; $i++) {
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


Invoke-FizzBuzz -limite 100