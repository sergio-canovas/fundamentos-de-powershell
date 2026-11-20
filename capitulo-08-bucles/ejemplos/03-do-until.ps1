# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: While / Do While / Do Until > Do Until

$i = 0

do {
    Write-Host $i
    $i++
} until ($i -gt 3)

Write-Host "Fin de bucle"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 0
# 1
# 2
# 3
# Fin de bucle
