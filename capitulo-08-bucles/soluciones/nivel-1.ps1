# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Solución del ejercicio de nivel 1
#
# Enunciado: Escribe un bucle While que muestre los números del 10 al 1 en orden
# descendente y, al terminar, el mensaje "¡Despegue!".

$i = 10

while ($i -ge 1) {
    Write-Host $i
    $i--
}

Write-Host "¡Despegue!"
