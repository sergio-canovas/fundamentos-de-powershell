# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: Try y catch

try {
    Get-ChildItem -Path "C:\directorio_inventado\" -ErrorAction Stop
}
catch {
    Write-Host "Algo ha fallado: $($_.Exception.Message)"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Algo ha fallado: Cannot find path 'C:\directorio_inventado\' because it does not exist.
