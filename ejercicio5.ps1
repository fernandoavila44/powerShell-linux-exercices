# 5. Modificar la función anterior para que me devuelva
# solo la suma de los números pares
function Suma-Pares {
    return ($numeros | Where-Object {$_ % 2 -eq 0} | Measure-Object -Sum).Sum
}

# metodo para verificar por consola el resultado
Suma-Pares