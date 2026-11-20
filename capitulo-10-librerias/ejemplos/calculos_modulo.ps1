# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Apartado: De librería a módulo

#Importamos el módulo
Import-Module "$PSScriptRoot\librerias\FuncionesMatematicas.psm1"

#Llamamos a sus funciones igual que antes
sumar -numero1 240 -numero2 150
multiplicar -numero1 350 -numero2 150
dividir -numero1 44 -numero2 2

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 390
# 52500
# 22
