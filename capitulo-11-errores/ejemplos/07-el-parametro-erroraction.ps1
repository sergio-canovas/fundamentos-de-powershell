# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: El parámetro -ErrorAction

Get-ChildItem -Path C:\carpeta_inventada -ErrorAction Stop

Write-Host "¿Esto se lee?"
#No, no se leerá

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Get-ChildItem: C:\Practicas\depuracion.ps1:1
# Line |
#    1 |  Get-ChildItem -Path C:\carpeta_inventada -ErrorAction Stop
#      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | No se encuentra la ruta de acceso 'C:\carpeta_inventada' porque no existe.
