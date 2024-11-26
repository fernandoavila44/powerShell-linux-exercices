#Hello
#ejemplos
#Para imprimir por pantalla
"hola mundo"
Write-Host "hola mundo Write-Host"
echo "hola mundo echo"
Write-Output "hola mundo Output"
 

#para definir una variable se pone antes el $
$miVariable = "soy una variable"

#ingresar datos 
$nombre=Read-Host "tu nombre es: "
Write-Host "bienvenido $nombre"

#operadores aritmeticos
$a=10
$b=2
$suma= $a+$b
$resta= $a-$b
$producto= $a*$b
$division= $a/$b
$modulo= $a%$b
Write-Host $suma $resta $producto $division $modulo

#operadores logicos
#-lt, -gt, -eq, -le, -ge -or, -and
# <   >     ==    <=  >= 
$a=50
$b=14
write-host ($a -lt $b)
write-host ($a -gt $b)
write-host ($a -eq $b)

#tipos en powershell
[int]$numero = 42

[string]$texto = "Hola, mundo"

[bool]$esVerdadero = $true

[char]$caracter = 'A'

[float]$numeroFlotante = 3.14 

[double]$numeroDoble = 3.14159265359

[datetime]$fecha = Get-Date

[array]$miMatriz = 1, 2, 3, 4, 5

#declarar objeto
$miHashTable = @{ clave1 = 'valor1'; clave2 = 'valor2' }

$miObjeto = [PSCustomObject]@{ Propiedad1 = 'Valor1' Propiedad2 = 'Valor2' }

# con funcion
[int]$numero = 42 
[string]$texto = "Hola, mundo" 
[bool]$esVerdadero = $true

function Sumar { 
param ( [int]$a, [int]$b ) 
return $a + $b 
} 

$resultado = Sumar -a 5 -b 10 
Write-Output $resultado # Salida: 15

#condicionales
$a=10
$b=5

if($a -gt $b){
    write-host "a es mayor que b"
}elseif($a -lt $b){
    Write-Host "a es menor que b"
}else{
    Write-Host "a es igual a b" 
}

#condicion switch
$numero= read-host "número: "
switch($numero){
  1 {" abre"}
  2 {" cierra"}
  3 {" apaga"}
  default {"inactivo"}
}

#funciones
function mensaje{
    "hola desde una función"
    }
    mensaje
#funcion1 
    function sumar{
        return 5+7
    }
    sumar
#funcion2
    function sumar($parm){
        return 5+$parm
    }
    sumar(10)
#funcion3
    function ver{
        "estas en: " 
      gl #es un alias de get-location
      }
      ver
      
#condiciones for
    for ($i=1; $i -le 10; $i++)
      {Write-Host $i}
#while
      $i = 1
      while ($i -le 5) {
      Write-Host $i
      $i++
      }
#foreach
      $ints = @(1, 2, 3, 4, 5)
      foreach ($i in $ints)
      {Write-Host $i}
#for 
      $ints = 1,2,3,4,5
      for($i = 0 ; $i -le $ints.Length ; $i++){
          Write-Host $ints[$i]
      }
#con rutas
      $Path = "D:\data\carpetaSistemasOperativos1"
      #esto es un enncabezado de una tabla
"{0,10} {1,-24} {2,-2}" -f `
" Size", "Last Accessed", "File Name "
###############

Foreach ($file in Get-Childitem $Path -recurse -force)
{If ($file.extension -eq ".txt")
    {
    "{0,10} {1,-24} {2,-2}" -f `
    $file.length, $file.LastAccessTime, $file.fullname
    }
}
#///////////////////////////
$Path = "D:\data\carpetaSistemasOperativos1"
#$destino="C:\Users\luisc\Google Drive\PROGRAMACION SOFTWARE\Sistemas Operacionales\sistema operacionales 2"
#nkdir testGrupo27 

Foreach ($file in Get-Childitem $Path -recurse -force)
{If ($file.extension -eq ".js")
{
Copy-Item $file "C:\Users\luisc\Google Drive\PROGRAMACION SOFTWARE\Sistemas Operacionales\sistema operacionales 2\testGrupo27" 
}
}


#arreglos
#arreglo fijos
$ints = @( 1, 2, 3, 4, 5)
Write-Host $ints.Length
Write-Host $ints[1]

#arreglo con objetos
$estudiante = @{nombre= "fernando"; apellido= "Avila"}
#$estudiante | Sort-Object

#se puede usar cualquiera de las dos formas de imprimir
Write-Host $estudiante.nombre
Write-Host $estudiante.get_Item("nombre")


#Array list
$listFixed = @(1,2,3,4,5) 
$listFixed.GetType()
$listFixed.Length


[System.Collections.ArrayList]$list= @()
$list.GetType()

$list.Add(1)
$list.Add(2)

Write-Host $list
$list.Count

# Lista en string 
#Lista: 

$miLista = New-Object -TypeName "System.Collections.Generic.List[string]"
$miLista.Add("elemento1")
$miLista.Add("elemento2")
