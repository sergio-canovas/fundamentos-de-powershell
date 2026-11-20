# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: La IA y tú

function Get-Area {
    param($Base, $Altura)
    return $Base * $Altura
}

$area = Get-Area(5, 3)
Write-Host "El área es: $area"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# El área es:
