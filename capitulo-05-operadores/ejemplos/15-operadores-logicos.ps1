# Fundamentos de PowerShell (2ª edición)
# Capítulo 5. Operadores.
# Apartado: Operadores lógicos

$edad = 34
($edad -ge 18) -and ($edad -lt 65)

$edad = 70
($edad -ge 18) -and ($edad -lt 65)

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# True
# False
