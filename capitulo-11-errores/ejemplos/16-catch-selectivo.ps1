# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: Catch selectivo

try {
    #Error de división por 0
    10/0
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
# Otro error
