# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Formato de salida > Format-List

Get-Date | Format-List -Property *

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# DisplayHint : DateTime
# DateTime    : 20 November 2026 13:04:02
# Date        : 20/11/2026 00:00:00
# Day         : 20
# DayOfWeek   : Friday
# DayOfYear   : 324
# Hour        : 13
# ...
# Year        : 2026
