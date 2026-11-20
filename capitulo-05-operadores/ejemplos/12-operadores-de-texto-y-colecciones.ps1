# Fundamentos de PowerShell (2ª edición)
# Capítulo 5. Operadores.
# Apartado: Operadores de texto y colecciones

"informe.docx" -like "*.docx"
"PC-AULA-07" -like "PC-AULA-??"
"PC-AULA-07" -match "AULA"
"martes" -in "lunes", "martes", "miércoles"
"lunes", "martes", "miércoles" -contains "jueves"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# True
# True
# True
# True
# False
