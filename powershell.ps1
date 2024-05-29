# Obtención de información del sistema:
$computerName = $env:COMPUTERNAME

$os = Get-WmiObject -Class Win32_OperatingSystem -ComputerName $computerName
$processor = Get-WmiObject -Class Win32_Processor -ComputerName $computerName

$systemInfo = @{
  "Sistema Operativo" = $os.Caption
  "Versión"           = $os.Version
  "Arquitectura"      = $os.OSArchitecture
  "Procesador"        = $processor.Name
  "Núcleos"           = $processor.NumberOfCores
}

$systemInfo | Format-Table -AutoSize

###Taller

# 1. Crear una funcion que me diga si un número es par o no

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
