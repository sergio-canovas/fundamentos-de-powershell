# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: CSV > Importar

$importados | Where-Object { [int]$_.Puesto -ge 9 } | Select-Object Nombre, Puesto

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Nombre      Puesto
# ------      ------
# VLC-1234568 9
# VLC-1234569 10
