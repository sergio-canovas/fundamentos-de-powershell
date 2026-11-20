# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: Tipos de datos > Arrays multidimensionales

Write-Host "Tabla ------- Primera columna"
$mega_array[0][0]
$mega_array[0][1]
$mega_array[0][2]

Write-Host "Tabla ------- Segunda columna"
$mega_array[1][0]
$mega_array[1][1]
$mega_array[1][2]

Write-Host "Fin de tabla"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Tabla ------- Primera columna
# Fila1_Columna1
# Fila2_Columna1
# Fila3_Columna1
# Tabla ------- Segunda columna
# Fila1_Columna2
# Fila2_Columna2
# Fila3_Columna2
# Fin de tabla
