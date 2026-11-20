# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: If, Elseif y Else

$valor = 11

if ($valor -gt 10) {
    Write-Host "Mayor que 10"
}
elseif ($valor -lt 0) {
    Write-Host "Es menor que 0"
}
else {
    Write-Host "El valor es $valor"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Mayor que 10
