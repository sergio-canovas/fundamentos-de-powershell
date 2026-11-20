# Fundamentos de PowerShell (2ª edición)
# Capítulo 5. Operadores.
# Apartado: Operadores de asignación

$var = 1
Write-Host "De inicio vale $var"
$var += 2
Write-Host "Con += 2 ahora vale $var"
$var -= 1
Write-Host "Con -= 1 ahora vale $var"
$var *= 2
Write-Host "Con *= 2 ahora vale $var"
$var /= 2
Write-Host "Con /= 2 ahora vale $var"
$var %= 2
Write-Host "Con %= 2 ahora vale $var"
$var++
Write-Host "Con ++ ahora vale $var"
$var--
Write-Host "Con -- ahora vale $var"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# De inicio vale 1
# Con += 2 ahora vale 3
# Con -= 1 ahora vale 2
# Con *= 2 ahora vale 4
# Con /= 2 ahora vale 2
# Con %= 2 ahora vale 0
# Con ++ ahora vale 1
# Con -- ahora vale 0
