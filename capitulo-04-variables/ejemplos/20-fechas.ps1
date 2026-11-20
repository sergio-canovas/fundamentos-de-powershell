# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: Tipos de datos > Fechas

#Guardamos la fecha en una variable e imprimimos.
$fecha = Get-Date -Day 1 -Month 11 -Year 2021
Write-Host $fecha

#Añadimos días a nuestra variable e imprimimos.
$fecha.AddDays(320)

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 01/11/2021 13:06:30
#
# 17 September 2022 13:06:30
