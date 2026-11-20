# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Dividir código > Return

function prueba {
    Write-Host "Esto se muestra, pero no se devuelve"
    "Esto sí se devuelve"
}

$resultado = prueba
Write-Host "Contenido de la variable: $resultado"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Esto se muestra, pero no se devuelve
# Contenido de la variable: Esto sí se devuelve
