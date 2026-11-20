# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: While / Do While / Do Until > While

$i = 0

while ($i -le 10) {
    Write-Host $i
    $i++
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 0
# 1
# 2
# ...
# 10
