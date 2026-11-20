# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Solución del ejercicio de nivel 3
#
# Enunciado: Crea el archivo `puestos.csv` con el código siguiente. Después, usando la
# clase `Equipo` con el constructor de tres parámetros, fabrica un objeto por cada fila
# del CSV, guárdalos en `$almacen` y muestra solo los equipos con Windows 10. Pregunta
# extra: en el capítulo 12 vimos que `Import-Csv` lo devuelve todo como texto. ¿De qué
# tipo es la propiedad `puesto` de tus objetos? ¿Por qué?

$filas[0].Puesto.GetType().Name
$almacen[0].puesto.GetType().Name

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# String
# Int32
