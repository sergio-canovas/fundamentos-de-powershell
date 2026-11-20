# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: Catch selectivo

try {
    #Con -ErrorAction Stop provocamos al catch
    Get-ChildItem -Path "C:\directorio_inventado\" -ErrorAction Stop
}
catch [System.Management.Automation.ItemNotFoundException] {
    #Si no se encuentra el directorio
    Write-Host "No se ha encontrado el directorio"
}
catch {
    Write-Host "Otro error"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# No se ha encontrado el directorio
