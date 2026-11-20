# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: El script principal

Get-ChildItem -Path "C:\Temp\Kaos" -Recurse -Name

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 2019
# 2020
# 2021
# caja_cartón.jpg
# FCW1932A4RT.jpg
# impresora1.jpg
# papelera2.jpg
# personal1.jpg
# presupuesto.xlsx
# Rack1_v1.JPG
# 2019\impresora1.jpg
# 2019\papelera2.jpg
# 2020\personal1.jpg
# 2020\presupuesto.xlsx
# 2020\Rack1_v1.JPG
# 2021\caja_cartón.jpg
# 2021\FCW1932A4RT.jpg
