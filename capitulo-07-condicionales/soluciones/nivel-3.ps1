# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Solución del ejercicio de nivel 3
#
# Enunciado: El siguiente script debería mostrar la calificación correspondiente a una
# nota, pero con un 9,5 dice Aprobado. Averigua por qué y corrígelo.

$nota = 9.5

if ($nota -ge 9) {
    Write-Host "Sobresaliente"
}
elseif ($nota -ge 7) {
    Write-Host "Notable"
}
elseif ($nota -ge 5) {
    Write-Host "Aprobado"
}
else {
    Write-Host "Suspenso"
}
