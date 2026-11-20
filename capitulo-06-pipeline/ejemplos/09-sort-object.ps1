# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Sort-Object

Get-Process |
    Sort-Object -Property CPU -Descending |
    Select-Object -Property Id, ProcessName, CPU -First 5

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     Id ProcessName                CPU
#     -- -----------                ---
#   4120 MsMpEng      9214.53
#   1768 dwm          3937.58
#   8236 explorer     1507.45
#   2984 svchost       905.84
#  11380 SearchHost    577.19
