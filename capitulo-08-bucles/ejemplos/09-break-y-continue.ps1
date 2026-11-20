# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: Break y Continue

foreach ($numero in 1..10) {
    if ($numero % 2 -eq 0) { continue }   # Saltamos los pares
    if ($numero -gt 7)     { break }      # Paramos al pasar de 7
    Write-Host $numero
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 1
# 3
# 5
# 7
