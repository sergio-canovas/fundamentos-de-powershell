# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Solución del ejercicio de nivel 3
#
# Enunciado: Este script debería contar tres visitas, pero muestra `Visitas: 0`. Explica
# por qué y corrígelo de dos formas: con `$global:` y con un parámetro y `return`. ¿Cuál
# te parece más clara?

$contador = 0

function Add-Visita {
    param([Int]$total)
    return $total + 1
}

$contador = Add-Visita -total $contador
$contador = Add-Visita -total $contador
$contador = Add-Visita -total $contador
Write-Host "Visitas: $contador"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Visitas: 3
