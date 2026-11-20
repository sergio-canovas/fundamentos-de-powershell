# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: Switch > Comodines

$archivo = "vacaciones.jpg"

switch -Wildcard ($archivo) {
    "*.jpg"  { Write-Host "Es una imagen" }
    "*.png"  { Write-Host "Es una imagen" }
    "*.docx" { Write-Host "Es un documento de Word" }
    default  { Write-Host "Tipo de archivo desconocido" }
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Es una imagen
