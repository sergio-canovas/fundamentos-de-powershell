# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Ejercicio de nivel 3
#
# Enunciado: Este script debería contar tres visitas, pero muestra `Visitas: 0`. Explica
# por qué y corrígelo de dos formas: con `$global:` y con un parámetro y `return`. ¿Cuál
# te parece más clara?

$contador = 0

function Add-Visita {
    $contador++
}

Add-Visita
Add-Visita
Add-Visita
Write-Host "Visitas: $contador"
