# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: El parámetro -ErrorAction

Get-ChildItem -Path C:\carpeta_inventada -ErrorAction Continue

Write-Host "¿Esto se lee?"
#Sí, esta vez sí

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Get-ChildItem: C:\Practicas\depuracion.ps1:1
# Line |
#    1 |  Get-ChildItem -Path C:\carpeta_inventada -ErrorAction Continue
#      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Cannot find path 'C:\carpeta_inventada' because it does not exist.
# ¿Esto se lee?
