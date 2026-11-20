# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Measure-Object

Get-ChildItem -Path C:\Windows -File | Measure-Object -Property Length -Sum

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Count             : 27
# Average           :
# Sum               : 18013898
# Maximum           :
# Minimum           :
# StandardDeviation :
# Property          : Length
