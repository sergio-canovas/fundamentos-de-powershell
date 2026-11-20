# Fundamentos de PowerShell (2ª edición)
# Capítulo 14. Programar con IA.
# Apartado: Un ejemplo completo > Paso 1. Leer

$limite = (Get-Date).AddDays(30)
Get-ChildItem "C:\Pruebas\Descargas" -Recurse |
    Where-Object { $_.LastWriteTime -lt $limite } |
    Select-Object Name, LastWriteTime

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Name           LastWriteTime
# ----           -------------
# Fotos viaje    20/11/2026 13:02:14
# apuntes.docx   23/07/2026 13:02:14
# factura.pdf    15/11/2026 13:02:14
# instalador.exe 06/10/2026 13:02:14
# nueva.jpg      18/11/2026 13:02:14
# playa.jpg      04/05/2026 13:02:14
