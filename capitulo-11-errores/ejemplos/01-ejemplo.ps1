# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: 

Write-Host "Error en cmdlet------------------------------"
Write-Hos "Línea 1"

Write-Host "Error aritmético-----------------------------"
5/0

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Error en cmdlet------------------------------
# Write-Hos: C:\Practicas\depuracion.ps1:2
# Line |
#    2 |  Write-Hos "Línea 1"
#      |  ~~~~~~~~~
#      | El término "Write-Hos" no se reconoce como nombre de un cmdlet, función, archivo de script o programa
#      | ejecutable. Compruebe la ortografía del nombre o, si se incluyó una ruta de acceso, compruebe que la ruta de
#      | acceso es correcta e inténtelo de nuevo.
# Error aritmético-----------------------------
# RuntimeException: C:\Practicas\depuracion.ps1:5
# Line |
#    5 |  5/0
#      |  ~~~
#      | Attempted to divide by zero.
