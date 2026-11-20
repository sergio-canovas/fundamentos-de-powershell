# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: JSON

$equipos | ConvertTo-Json | Set-Content -Path equipos.json -Encoding utf8
$cargados = Get-Content -Path equipos.json -Raw | ConvertFrom-Json
$cargados | Where-Object { $_.Puesto -ge 9 } | Select-Object Nombre, Puesto

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Nombre      Puesto
# ------      ------
# VLC-1234568      9
# VLC-1234569     10
