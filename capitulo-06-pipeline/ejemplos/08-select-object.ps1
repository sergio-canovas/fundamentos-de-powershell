# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Select-Object

Get-Process -Name explorer | Select-Object -ExpandProperty Id

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 11328
# 25708
