# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Apartado: Creación de librerías

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
