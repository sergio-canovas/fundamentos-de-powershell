# Fundamentos de PowerShell (2ª edición)
# Capítulo 5. Operadores.
# Apartado: Operadores de asignación

$texto = "Hola"
$texto += ", mundo"
$texto

$lista = @("lunes")
$lista += "martes"
$lista

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Hola, mundo
# lunes
# martes
