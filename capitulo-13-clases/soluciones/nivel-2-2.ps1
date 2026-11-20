# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Solución del ejercicio de nivel 2
#
# Enunciado: La junta de accionistas también quería motos. Crea la clase `Moto`, que
# herede de `Vehiculo`, con una propiedad nueva, `cilindrada`, de tipo entero. Su
# constructor debe usar el de `Vehiculo` con `: base(...)`. Sobrescribe `avanzar()` para
# que muestre "¡Brrrum!". Crea una moto y comprueba que avanza a su manera y retrocede
# como cualquier otro vehículo.

$motoUno.avanzar()
$motoUno.retroceder()

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# ¡Brrrum!
# Hacia detrás
