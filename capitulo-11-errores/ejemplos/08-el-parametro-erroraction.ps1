# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: El parámetro -ErrorAction

Get-ChildItem -Path C:\carpeta_inventada -ErrorAction Ignore

Write-Host "¿Esto se lee?"
Write-Host "Errores guardados: $($Error.Count)"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# ¿Esto se lee?
# Errores guardados: 0
