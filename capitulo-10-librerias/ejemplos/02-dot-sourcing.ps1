# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Apartado: Dot-sourcing

& "$PSScriptRoot\librerias\funciones_matematicas.ps1"

sumar -numero1 240 -numero2 150

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# sumar: C:\Practicas\Calculos\calculos.ps1:3
# Line |
#    3 |  sumar -numero1 240 -numero2 150
#      |  ~~~~~
#      | The term 'sumar' is not recognized as a name of a cmdlet, function, script file, or executable program. Check
#      | the spelling of the name, or if a path was included, verify that the path is correct and try again.
