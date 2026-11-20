# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: If, Elseif y Else > Condiciones compuestas

$edad = 20
$tieneCarnet = $true

if ($edad -ge 18 -and $tieneCarnet) {
    Write-Host "Puedes alquilar el coche"
}
else {
    Write-Host "Lo siento, no puedes alquilar el coche"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Puedes alquilar el coche
