# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: El script principal

$listado = Get-ChildItem -Path "C:\Temp\Kaos"
$listado[0].LastWriteTime.Year
$listado[2].LastWriteTime.Year
$listado[4].LastWriteTime.Year

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 2021
# 2019
# 2020
