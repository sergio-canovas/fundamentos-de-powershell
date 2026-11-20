# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Apartado: Uso de funciones externas

#Agregamos librería
. "$PSScriptRoot\librerias\funciones_matematicas.ps1"

#Llamamos a funciones de la librería
sumar -numero1 240 -numero2 150
multiplicar -numero1 350 -numero2 150
dividir -numero1 44 -numero2 2

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 390
# 52500
# 22
