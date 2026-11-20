# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: El script principal > Ejecutándolo por segunda vez

Get-ChildItem -Path "C:\Temp\Kaos" -Recurse -Directory -Name

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 2019
# 2020
# 2021
# 2026
# 2026\2019
# 2026\2020
# 2026\2021
