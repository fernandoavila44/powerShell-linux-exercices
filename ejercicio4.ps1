# 4. Dado el arreglo anterior crear una funcion 
#que me devuelva la suma de todos los valores del arreglo

function Suma-Total {
    return ($numeros | Measure-Object -Sum).Sum
}

# metodo para verificar por conola el resultado
Suma-Total