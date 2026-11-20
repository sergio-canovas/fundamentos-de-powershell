# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Ejercicio de nivel 3
#
# Enunciado: Este script debería sumar dos números, pero en lugar del resultado muestra
# una ruta y un error. ¿Qué le falta? ¿Por qué aparece la ruta en pantalla?

#Agregamos librería
"$PSScriptRoot\librerias\funciones_matematicas.ps1"

sumar -numero1 240 -numero2 150
