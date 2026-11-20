# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: Ficheros de texto

Set-Content -Path notas.txt -Value "Comprar tóner para la impresora"
Add-Content -Path notas.txt -Value "Revisar las copias de seguridad"
Add-Content -Path notas.txt -Value "Actualizar el equipo VLC-1234567"
Get-Content -Path notas.txt

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Comprar tóner para la impresora
# Revisar las copias de seguridad
# Actualizar el equipo VLC-1234567
