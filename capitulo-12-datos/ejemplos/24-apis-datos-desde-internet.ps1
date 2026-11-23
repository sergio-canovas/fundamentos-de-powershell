# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: APIs: datos desde internet

$festivos | Where-Object { $_.counties -contains "ES-MD" } |
    Select-Object date, localName

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# date       localName
# ----       ---------
# 2027-03-25 Jueves Santo
# 2027-05-02 Fiesta de la Comunidad de Madrid
