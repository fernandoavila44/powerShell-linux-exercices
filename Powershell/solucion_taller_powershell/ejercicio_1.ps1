# 1. Crear una funcion que me diga si un número es par o no
function EsPar($numeroUsuario) {  
    if ($numeroUsuario % 2 -eq 0) {
        $respuesta = "El numero $numeroUsuario es par"
    }
    else {
        $respuesta = "El numero $numeroUsuario es impar"
    }

    return $respuesta
}

EsPar(10)
EsPar(35)