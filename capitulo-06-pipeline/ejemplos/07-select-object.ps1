# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Select-Object

Get-Process | Select-Object -Property Id, ProcessName, CPU -First 5

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     Id ProcessName                      CPU
#     -- -----------                      ---
#   9412 ApplicationFrameHost          2,31
#  14876 audiodg                      18,44
#   6120 conhost                       0,05
#    812 csrss                        12,67
#   7344 ctfmon                        9,20
