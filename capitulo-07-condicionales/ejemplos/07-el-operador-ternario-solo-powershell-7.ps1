# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: If, Elseif y Else > El operador ternario (solo PowerShell 7)

$espacioLibreGB = 8

if ($espacioLibreGB -lt 10) {
    $mensaje = "Queda poco espacio"
}
else {
    $mensaje = "Espacio suficiente"
}

Write-Host $mensaje
