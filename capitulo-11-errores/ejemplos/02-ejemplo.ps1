# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: 

Get-Item -Path C:\carpeta_inventada, C:\Windows
Write-Host "El script continúa"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Get-Item: C:\Practicas\depuracion.ps1:1
# Line |
#    1 |  Get-Item -Path C:\carpeta_inventada, C:\Windows
#      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | No se encuentra la ruta de acceso 'C:\carpeta_inventada' porque
#      | no existe.
#
#     Directory: C:\
#
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# d----          20/11/2026    13:07                Windows
# El script continúa
