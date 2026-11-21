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
#      | El término "sumar" no se reconoce como nombre de un cmdlet, función, archivo de script o programa ejecutable.
#      | Compruebe la ortografía del nombre o, si se incluyó una ruta de acceso, compruebe que la ruta de acceso es
#      | correcta e inténtelo de nuevo.
