# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Ejercicio de nivel 3
#
# Enunciado: Este script debería mostrar el nombre y el tamaño de un fichero, pero el
# resultado es extraño. Ejecútalo, explica qué ocurre y corrígelo.

$archivo = Get-Item -Path "C:\Windows\win.ini"
Write-Host "El archivo $archivo.Name ocupa $archivo.Length bytes"
