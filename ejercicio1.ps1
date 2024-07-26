# Definimos una función llamada Es-Par
function Get-Par {
    # Definimos un parámetro de entrada llamado $numero, que es de tipo entero
    param (
        [int]$numero
    )

    # Utilizamos el operador módulo (%) para comprobar si el número es divisible por 2
    if ($numero % 2 -eq 0) {
        # Si el residuo de la división por 2 es 0, el número es par
        return "$numero es par."
    } else {
        # Si el residuo de la división por 2 no es 0, el número es impar
        return "$numero es impar."
    }
}

# Ejemplo de uso: llamamos a la función Es-Par con el número 4
Get-Par -numero 4
# Ejemplo de uso: llamamos a la función Es-Par con el número 7
Get-Par -numero 7
