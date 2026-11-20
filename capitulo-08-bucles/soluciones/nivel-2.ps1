# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Solución del ejercicio de nivel 2
#
# Enunciado: Escribe un script que pida al usuario un número entre 1 y 5 con `Read-Host` y
# que lo vuelva a pedir mientras la respuesta no sea válida. ¿Qué tipo de bucle es el más
# adecuado y por qué?

do {
    $respuesta = Read-Host "Introduce un número del 1 al 5"
} until ($respuesta -in '1', '2', '3', '4', '5')

Write-Host "Has elegido el $respuesta"
