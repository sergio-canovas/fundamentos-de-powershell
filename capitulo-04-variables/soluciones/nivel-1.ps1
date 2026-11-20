# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Solución del ejercicio de nivel 1
#
# Enunciado: Crea tres variables con tu nombre, tu edad y si has terminado este curso
# (`$true` o `$false`). Muestra una frase que las use todas y, después, el tipo de cada
# una con `.GetType().Name`.

$nombre = "Ana"
$edad = 20
$terminado = $false

Write-Host "Me llamo $nombre, tengo $edad años. Curso terminado: $terminado"
$nombre.GetType().Name
$edad.GetType().Name
$terminado.GetType().Name

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Me llamo Ana, tengo 20 años. Curso terminado: False
# String
# Int32
# Boolean
