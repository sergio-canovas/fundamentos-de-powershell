# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Solución del ejercicio de nivel 1
#
# Enunciado: Escribe una función `Get-Saludo` que reciba un nombre como parámetro y
# devuelva el texto "Hola, " seguido del nombre. Guarda el resultado en una variable y
# muéstralo con `Write-Host`.

function Get-Saludo {
    param([String]$nombre)
    return "Hola, $nombre"
}

$mensaje = Get-Saludo -nombre "Ana"
Write-Host $mensaje

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Hola, Ana
