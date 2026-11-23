# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Formato de salida > Format-Table

Get-Process |
    Select-Object -Last 2 |
    Format-Table -AutoSize -HideTableHeaders

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     12  4,10  9,85   0,42  6004  0 WmiPrvSE
#     10  2,21  6,37   0,09  5128  0 WUDFHost
