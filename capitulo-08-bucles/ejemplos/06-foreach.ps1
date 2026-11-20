# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: ForEach

$numeros = @(1, 2, 3, 4, 5, 6)

foreach ($numero in $numeros) {
    Write-Host $numero
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 1
# 2
# 3
# 4
# 5
# 6
