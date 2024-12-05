Impresión por pantalla “Hola mundo”

# 1. hola mundo con comillas
"Hola mundo desde PowerShell"

#2. hola mundo con write-host
Write-Host "hola mundo desde PowerShell"

#3. hola mundo con echo
echo "hola mundo desde PowerShell"

Definiendo variables

$miVariable = "soy una variable"

Ingresando datos en una variable

$nombre = Read-Host "tu nombre es: "
Write-Host "bienvenido $nombre"

Operadores aritméticos
$a = 10
$b = 2
$suma = $a + $b
$resta = $a - $b
$producto = $a * $b
$division = $a / $b
$modulo = $a % $b


Operadores Logicos
# -lt, -gt, -eq, -le, -ge -or, -and
$a = 50
$b = 14
write-host ($a -lt $b)
write-host ($a -gt $b)
write-host ($a -eq $b)

Tipos en powershell

[int]$numero = 42
[string]$texto = "Hola, mundo"
[bool]$esVerdadero = $true
[char]$caracter = 'A'
[float]$numeroFlotante = 3.14 
[double]$numeroDoble = 3.14159265359
[datetime]$fecha = Get-Date
[array]$miMatriz = 1, 2, 3, 4, 5
$miHashTable = @{ clave1 = 'valor1'; clave2 = 'valor2' }
$miObjeto = [PSCustomObject]@{ Propiedad1 = 'Valor1'; Propiedad2 = 'Valor2' }

[int]$numero = 42 
[string]$texto = "Hola, mundo" 
[bool]$esVerdadero = $true

function Sumar { 
    param ( [int]$a, [int]$b ) 
    return $a + $b 
} 

$resultado = Sumar -a 5 -b 10 
Write-Output $resultado # Salida: 15

Condicionales
$a = 10
$b = 5

if ($a -gt $b) {
    write-host "a es mayor que b"
}
elseif ($a -lt $b) {
    Write-Host "a es menor que b"
}
else {
    Write-Host "a es igual a b" 
}

$numero = read-host "número: "
switch ($numero) {
    1 { " abre" }
    2 { " cierra" }
    3 { " apaga" }
    default { "inactivo" }
}

Funciones
function mensaje {
    "hola desde una función"
}
mensaje

function sumar {
    return 5 + 7
}
sumar

function sumar1($parm) {
    return 5 + $parm
}
sumar(10)

function ver {
    "estas en: " 
    gl
}
ver

Loops

for ($i = 1; $i -le 10; $i++)
{ Write-Host $i }

$i = 1
while ($i -le 5) {
    Write-Host $i
    $i++
}

$ints = @(1, 2, 3, 4, 5)
foreach ($i in $ints)
{ Write-Host $i }

$ints1 = 1, 2, 3, 4, 5
for ($i = 0 ; $i -le $ints1.Length ; $i++) {
    Write-Host $ints1[$i]
}

$Path = "e:\data\carpetaSistemasOperativos1"
"{0,10} {1,-24} {2,-2}" -f `
    " Size", "Last Accessed", "File Name "
Foreach ($file in Get-Childitem $Path -recurse -force) {
    If ($file.extension -eq ".txt") {
        "{0,10} {1,-24} {2,-2}" -f `
            $file.length, $file.LastAccessTime, $file.fullname
    }
}

Arreglos y objetos

$ints = @( 1, 2, 3, 4, 5)
Write-Host $ints.Length
Write-Host $ints[1]
$estudiante = @{nombre = "fernando"; apellido = "Avila" }
$estudiante | Sort-Object
Write-Host $estudiante.nombre
Write-Host $estudiante.get_Item("nombre")

Arrays en Powershell son fijos, para operar con arreglos se utilizan los ArrayList o listas

$listFixed = @(1, 2, 3, 4, 5) 
$listFixed.GetType()
$listFixed.Length


[System.Collections.ArrayList]$list = @()
$list.GetType()

$list.Add(1)
$list.Add(2)

Write-Host $list
$list.Count

$listFixed = @(1, 2, 3, 4, 5) 
$listFixed.GetType()
$listFixed.Length


Lista: 

$miLista = New-Object -TypeName "System.Collections.Generic.List[string]"
$miLista.Add("elemento1")
$miLista.Add("elemento2")



