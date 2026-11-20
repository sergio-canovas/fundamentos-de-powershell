# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Formato de salida > Format-List

Get-Process |
    Select-Object -Last 2 |
    Format-List

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Id      : 6004
# Handles : 183
# CPU     : 0.421875
# SI      : 0
# Name    : WmiPrvSE
#
# Id      : 5128
# Handles : 142
# CPU     : 0.09375
# SI      : 0
# Name    : WUDFHost
