# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: APIs: datos desde internet

$festivos = Invoke-RestMethod -Uri "https://date.nager.at/api/v3/PublicHolidays/2027/ES"
$festivos.Count
$festivos[0]

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 32
#
# date        : 2027-01-01
# localName   : Año Nuevo
# name        : New Year's Day
# countryCode : ES
# fixed       : False
# global      : True
# counties    :
# launchYear  :
# types       : {Public}
