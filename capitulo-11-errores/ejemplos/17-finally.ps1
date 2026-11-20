# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: Finally

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
finally {
    Write-Host "Pase lo que pase, este bloque se ejecuta"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Otro error
# Pase lo que pase, este bloque se ejecuta
