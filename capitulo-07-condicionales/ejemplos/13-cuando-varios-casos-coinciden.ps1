# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: Switch > Cuando varios casos coinciden

$archivo = "informe_2026.docx"

switch -Wildcard ($archivo) {
    "*.docx"   { Write-Host "Es un documento de Word"; break }
    "informe*" { Write-Host "Es un informe" }
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Es un documento de Word
