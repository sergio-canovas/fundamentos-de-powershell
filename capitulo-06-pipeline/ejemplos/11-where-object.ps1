# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Where-Object

Get-Process |
    Select-Object -Property Id, ProcessName, CPU |
    Where-Object -FilterScript {$_.CPU -gt 100}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     Id ProcessName                       CPU
#     -- -----------                       ---
#   1768 dwm                          3937.78
#   8236 explorer                     1507.45
#   4120 MsMpEng                      9214.60
#  11380 SearchHost                    577.19
# ...
