# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Solución del ejercicio de nivel 2
#
# Enunciado: Escribe una función `Convert-Temperatura` que reciba una temperatura en
# grados Celsius y devuelva su equivalente en Fahrenheit (multiplica por 9, divide entre 5
# y suma 32). Úsala dentro de un bucle para convertir 0, 25 y 100 grados.

function Convert-Temperatura {
    param([Double]$celsius)
    return $celsius * 9 / 5 + 32
}

foreach ($grados in @(0, 25, 100)) {
    $fahrenheit = Convert-Temperatura -celsius $grados
    Write-Host "$grados °C son $fahrenheit °F"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 0 °C son 32 °F
# 25 °C son 77 °F
# 100 °C son 212 °F
