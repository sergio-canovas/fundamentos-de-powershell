# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: La variable $Error

Get-ChildItem -Path C:\carpeta_inventada

Write-Host "Reproduciendo último error:"
Write-Host $Error[0]

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Get-ChildItem: C:\Practicas\depuracion.ps1:1
# Line |
#    1 |  Get-ChildItem -Path C:\carpeta_inventada
#      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Cannot find path 'C:\carpeta_inventada' because it does not exist.
# Reproduciendo último error:
# Cannot find path 'C:\carpeta_inventada' because it does not exist.
