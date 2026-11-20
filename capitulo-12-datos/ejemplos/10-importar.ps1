# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: CSV > Importar

$importados | Where-Object { $_.SO -eq "Windows 11" } | Select-Object Nombre, Responsable

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Nombre      Responsable
# ------      -----------
# VLC-1234568 Íñigo
# VLC-1234569 Begoña
