# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Solución del ejercicio de nivel 2
#
# Enunciado: Modifica el proyecto para que organice por año y mes, en carpetas como
# `2021\09`. Pista: `$fichero.LastWriteTime.ToString("MM")` devuelve el mes con dos
# cifras, y `New-Item` crea las carpetas intermedias que falten.

Get-ChildItem -Path C:\Temp\Kaos -Recurse -Directory -Name

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 2019
# 2020
# 2021
# 2019\06
# 2020\01
# 2020\03
# 2021\09
