# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Ejercicio de nivel 3
#
# Enunciado: El siguiente script debería mostrar la calificación correspondiente a una
# nota, pero con un 9,5 dice Aprobado. Encuentra el fallo y corrígelo.

$nota = 9.5

if ($nota -ge 5) {
    Write-Host "Aprobado"
}
elseif ($nota -ge 7) {
    Write-Host "Notable"
}
elseif ($nota -ge 9) {
    Write-Host "Sobresaliente"
}
else {
    Write-Host "Suspenso"
}
