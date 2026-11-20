# Fundamentos de PowerShell (2ª edición)
# Capítulo 5. Operadores.
# Solución del ejercicio de nivel 1
#
# Enunciado: Un disco de 500 GB tiene 412 GB ocupados. Guarda ambos valores en variables y
# calcula con PowerShell el espacio libre y el porcentaje de disco usado.

$total = 500
$usado = 412
$libre = $total - $usado
$porcentajeUsado = $usado / $total * 100
Write-Host "Espacio libre: $libre GB"
Write-Host "Espacio usado: $porcentajeUsado %"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Espacio libre: 88 GB
# Espacio usado: 82.4 %
