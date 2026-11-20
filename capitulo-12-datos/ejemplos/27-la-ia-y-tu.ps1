# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: La IA y tú

$inventario | ConvertTo-Json -Depth 10 | Set-Content -Path inventario.json -Encoding utf8

$recuperado = Get-Content -Path inventario.json -Raw | ConvertFrom-Json
$recuperado.Equipos[0].Discos[0].TamanoGB

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 256
