# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: El pipeline o tubería

Get-Process -Name explorer | Select-Object -Property Id

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#    Id
#    --
# 11328
# 25708
