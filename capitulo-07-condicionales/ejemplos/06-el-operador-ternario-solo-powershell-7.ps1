# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: If, Elseif y Else > El operador ternario (solo PowerShell 7)
# Este ejemplo solo funciona en PowerShell 7.

$espacioLibreGB = 8
$mensaje = ($espacioLibreGB -lt 10) ? "Queda poco espacio" : "Espacio suficiente"
Write-Host $mensaje

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Queda poco espacio
