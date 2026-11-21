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
#      | No se encuentra la ruta de acceso 'C:\carpeta_inventada' porque no existe.
# Reproduciendo último error:
# No se encuentra la ruta de acceso 'C:\carpeta_inventada' porque no existe.
