# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Solución del ejercicio de nivel 3
#
# Enunciado: Este script debería contar tres visitas, pero muestra `Visitas: 0`. Explica
# por qué y corrígelo de dos formas: con `$global:` y con un parámetro y `return`. ¿Cuál
# te parece más clara?

$global:contador = 0

function Add-Visita {
    $global:contador++
}

Add-Visita
Add-Visita
Add-Visita
Write-Host "Visitas: $contador"
