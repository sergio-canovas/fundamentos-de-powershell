# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: APIs: datos desde internet

$festivos | Where-Object { $_.global } | Select-Object date, localName

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# date       localName
# ----       ---------
# 2027-01-01 Año Nuevo
# 2027-01-06 Día de Reyes / Epifanía del Señor
# 2027-03-26 Viernes Santo
# 2027-05-01 Fiesta del trabajo
# 2027-08-15 Asunción
# 2027-10-12 Fiesta Nacional de España
# 2027-11-01 Día de todos los Santos
# 2027-12-06 Día de la Constitución
# 2027-12-08 Inmaculada Concepción
# 2027-12-25 Navidad
