# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Solución del ejercicio de nivel 2
#
# Enunciado: Crea un array con cinco ciudades. Muestra la primera, la última y cuántas
# hay. Añade una ciudad más y vuelve a contarlas.

$ciudades = @("Valencia", "Madrid", "Sevilla", "Bilbao", "Zaragoza")

$ciudades[0]
$ciudades[-1]
$ciudades.Count

$ciudades += "Murcia"
$ciudades.Count

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Valencia
# Zaragoza
# 5
# 6
