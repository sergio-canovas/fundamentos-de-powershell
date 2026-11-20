# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: If, Elseif y Else > Lo que PowerShell considera verdadero

$registros = Get-ChildItem -Path C:\Windows -Filter *.log

if ($registros) {
    Write-Host "Hay $($registros.Count) archivos de registro"
}
else {
    Write-Host "No hay archivos de registro"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Hay 8 archivos de registro
