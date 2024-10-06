function Check_NumInArray {
    param (
        [int]$number,
        [int[]]$array 
    )
    function Num_Exists {
        param (
            [int]$num,
            [int[]]$arr
        )
        
        return $arr -contains $num
    }

    # Llama a la función interna y verifica el resultado
    if (Num_Exists -num $number -arr $array) {
        Write-Host "El número $number existe en el arreglo."
    }
}

# Ejemplo de uso
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)  # arreglo de números

Check_NumInArray -number 5 -array $numeros 