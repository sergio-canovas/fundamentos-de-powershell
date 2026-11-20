# Fundamentos de PowerShell (2ª edición)
# Capítulo 5. Operadores.
# Apartado: La IA y tú

$nombreEquipo = "SRV-FICHEROS-01"
$esServidor = $nombreEquipo -contains "SRV"
Write-Host "¿Es un servidor? $esServidor"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# ¿Es un servidor? False
