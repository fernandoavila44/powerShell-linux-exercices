# 1. Crear una funcion que me diga si un número es par o no
     function numeropar{
        $numero = Read-Host "Digita un numero"
        if($numero % 2 -eq 0){
            Write-Host "El numero ingresado en par"
        }else{
            Write-Host "El numero no es par"
        }
     }
     numeropar
# 2. Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
     for($i=0;$i -le 100; $i++){
        if( $i % 3 -eq 0 -and $i % 5 -eq 0){
            Write-Host "FIZZBUZZ"
        }elseif ($i % 5 -eq 0) {
            Write-Host "BUZZ"
        }elseif($i % 3 -eq 0){
              Write-Host "FIZZ"
        }else{
            Write-Host $i
        }

     }

# 3.Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
    $numerosArreglo = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
   function buscar($parametro) {
          
          for($i=0; $i -le $numerosArreglo.Length;$i++){
               if($parametro -eq $numerosArreglo[$i]){
                
                       Write-Host "El numero " $parametro " existe en el array"
               }
            }
    
   }
   buscar(10)
# 4. Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
    function sumaArray {
        $suma = 0
        for($i=0; $i -le $numerosArreglo.Length;$i++){
            $suma = $suma + $numerosArreglo[$i]
         }
       Write-Host "Suma total del array es " $suma   
    }
    sumaArray
# 5. Modificar la función anterior para que me devuelva solo la suma de los números pares
    function SumaNumerosParses {
        $sumapares = 0
        for($i=0; $i -le $numerosArreglo.Length;$i++){
            if($numerosArreglo[$i] % 2 -eq 0){
                $sumapares = $sumapares + $numerosArreglo[$i]

            }
         }
         Write-Host "La sumar de todos lo valores pares es " $sumapares
    }
      SumaNumerosParses