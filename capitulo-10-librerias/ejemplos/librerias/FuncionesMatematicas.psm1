# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Apartado: De librería a módulo
# El mismo contenido que funciones_matematicas.ps1, guardado como módulo.

function sumar {
    param([Double]$numero1, [Double]$numero2)
    $numero1 + $numero2
}
function restar {
    param([Double]$numero1, [Double]$numero2)
    $numero1 - $numero2
}
function multiplicar {
    param([Double]$numero1, [Double]$numero2)
    $numero1 * $numero2
}
function dividir {
    param([Double]$numero1, [Double]$numero2)
    $numero1 / $numero2
}
