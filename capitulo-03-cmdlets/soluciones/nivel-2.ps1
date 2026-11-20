# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Solución del ejercicio de nivel 2
#
# Enunciado: Consultando la sintaxis o la ayuda de `Get-ChildItem`, averigua qué parámetro
# muestra solo archivos (sin carpetas) y cuál entra en las subcarpetas. Con ellos, escribe
# un comando que muestre todos los ficheros `.txt` de `C:\Practicas`, incluidos los de sus
# subcarpetas.

Get-ChildItem -Path "C:\Practicas" -Filter *.txt -File -Recurse
