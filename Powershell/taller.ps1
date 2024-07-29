# 1. Crear una funcion que me diga si un número es par o no
Write-Output " "
Write-Output "EJERCICIO NRO  1: **********************************************************************"
Write-Output " "
# Se crea la funcion que me evaluará si un número es o no par.
function numeroPar {
    # declaramos la variable num que es de tipo entero la cual recibe por parámetro un número.
    param ([int]$num)

    # Evaluamos, si el modulo del número es cero entonces el numero es par de lo contrato es impar.
    if ($num % 2 -eq 0) {
        return "$num es un número par."
    }
    else {
        return "$num es un número impar."
    }
}

# Hacemos el llamado de la función y le enviamos un número par y otro impar para evaluar el resultado
numeroPar -num 10
numeroPar -num 21
Write-Output " "

# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
Write-Output "EJERCICIO NRO  2: **********************************************************************"
# Creamos un ciclo for para recorrer los número del 1 al 100, cada número me lo evaluará con el módulo
# dependiendo de si lo que necesito es saber si es divisible por 3, 5 o ambos
Write-Output " "
for ($i = 1; $i -le 100; $i++) {

    #Primero determinados si el número es divisible por 3 y 5
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Output "$i : FizzBuzz"

    }

    #Si el numero no cumple ambas condiciones evaluamos en que grupo esta, si en los divisibles por 3 o por 5
    elseif ($i % 3 -eq 0) {
        Write-Output "$i : Fizz"

    }
    elseif ($i % 5 -eq 0) {
        Write-Output "$i : Buzz"

    }
    else {
        Write-Output "$i : No aplica"
    }
}
Write-Output " " 
# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# $numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Write-Output "EJERCICIO NRO  3: **********************************************************************"
Write-Output " "
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

#Definimos la funcion Encontrar a la cual le enviamos por parámetro un número
function Encontrar {
    param (
        [int]$num
    )

    # Con el método contains verificamos si el número que recibimos está contenido en el arreglo.
    if ($numeros -contains $num) {
        return "El numero $num si existe en el arreglo numeros."
    }
    else {
        return "El numero $num no existe en el arreglo."
    }
}

# Ahora llamamos la función para evaluar el resultado, para esto enviamos dos número por parámetro.
    
Encontrar -num 9
Encontrar -num 21

Write-Output " "
# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
Write-Output "EJERCICIO NRO  4: **********************************************************************"
Write-Output " "
# Defino el arreglo de números
$numeritos = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Creo la funcion que me sumará todos los numeros del arreglo
function sumaArreglo {
 
    # En esta variable guardo la suma acumulada de los numeros del arreglo.
    $sumaTotal = 0
  
    # Con este foreach recorremos el arreglo y la variable $num ira tomando 
    #cada valor el cual sera sumado consecutivamente en cada iteración
    foreach ($num in $numeritos) {
        $sumaTotal += $num
        
    }

    return "La suma total de los numeros del arreglo es: $sumaTotal"
}

# Ejemplo de uso: llamamos a la función Get-Sum
sumaArreglo 

Write-Output " "

# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
Write-Output "EJERCICIO NRO  5: **********************************************************************"
Write-Output " "
# Defino el arreglo de números
$numeritos = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Creo la funcion que me sumará todos los numeros del arreglo
function sumaArregloPares {
 
    # En esta variable guardo la suma acumulada de los numeros del arreglo.
    $sumaTotal = 0
  
    # Con este foreach recorremos el arreglo y la variable $num ira tomando 
    #cada valor el cual sera sumado consecutivamente en cada iteración
    foreach ($num in $numeritos) {
        
        # Con este if validamos que la suma solo se realice cuando el modulo 2 del numero del arreglo  sea cero. 
        if ($num % 2 -eq 0) {
            $sumaTotal += $num
        }
      
        
    }

    return "La suma total de los numeros pares del arreglo es: $sumaTotal"
}

# Llamamos la funcion
sumaArregloPares