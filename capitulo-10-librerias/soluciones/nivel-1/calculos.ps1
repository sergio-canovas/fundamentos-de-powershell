# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Descripción: Solución del ejercicio de nivel 1: el script que usa la librería

#Agregamos librería
. "$PSScriptRoot\librerias\funciones_matematicas.ps1"

restar -numero1 1000 -numero2 1
potencia -base 2 -exponente 10

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 999
# 1024
