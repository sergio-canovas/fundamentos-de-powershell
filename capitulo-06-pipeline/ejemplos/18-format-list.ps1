# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Formato de salida > Format-List

Get-Process |
    Select-Object -Last 2 |
    Format-List -Property Id, Name

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Id   : 6004
# Name : WmiPrvSE
#
# Id   : 5128
# Name : WUDFHost
