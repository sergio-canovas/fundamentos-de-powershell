# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: Declarar el tipo de una variable

[int]$edad = 30
$edad = "31"
$edad.GetType().Name
$edad = "treinta y dos"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Int32
# MetadataError: No se puede convertir el valor "treinta y dos" al tipo "System.Int32". Error: "The input string 'treinta y dos' was not in a correct format."
