# 1. Crear una funcion que me diga si un número es par o no
function IE {
    param (
        [int]$num 
        )

    if ($num % 2 -eq 0) {
        "El número $num es par."
        } else {
        "El número $num es impar."
     }
}

# Llama a la función con un número
IE 3  # Cambia el numero