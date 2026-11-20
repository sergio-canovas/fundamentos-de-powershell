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
#      | The term 'Write-Hos' is not recognized as a name of a cmdlet, function, script file, or executable program.
#      | Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
# Error aritmético-----------------------------
# RuntimeException: C:\Practicas\depuracion.ps1:5
# Line |
#    5 |  5/0
#      |  ~~~
#      | Attempted to divide by zero.
