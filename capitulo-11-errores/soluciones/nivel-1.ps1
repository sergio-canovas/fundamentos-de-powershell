# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Solución del ejercicio de nivel 1
#
# Enunciado: Escribe un script que intente leer con `Get-Content` un fichero que no
# existe, sin que aparezca el error en pantalla, y que después muestre solo el mensaje del
# error usando `$Error`. ¿Sirve cualquier valor de `-ErrorAction`?

Get-Content -Path C:\Temp\no_existe.txt -ErrorAction SilentlyContinue
Write-Host "Último error: $($Error[0].Exception.Message)"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Último error: Cannot find path 'C:\Temp\no_existe.txt' because it does not exist.
