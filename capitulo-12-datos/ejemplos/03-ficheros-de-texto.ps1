# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: Ficheros de texto

$lineas = Get-Content -Path notas.txt
$lineas.Count
$lineas[0]

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 3
# Comprar tóner para la impresora
