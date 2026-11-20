# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: La IA y tú

# Calcula el espacio que necesitamos para la copia de seguridad
$documentos = Read-Host "GB de la carpeta Documentos"
$fotos = Read-Host "GB de la carpeta Fotos"

$total = $documentos + $fotos
Write-Host "Necesitas un disco de al menos $total GB"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# GB de la carpeta Documentos: 120
# GB de la carpeta Fotos: 80
# Necesitas un disco de al menos 12080 GB
