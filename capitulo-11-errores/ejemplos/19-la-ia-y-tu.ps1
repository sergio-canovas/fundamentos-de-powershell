# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: La IA y tú

Copy-Item -Path "C:\Datos\informe.xlsx" -Destination "C:\Copias\" -ErrorAction Stop

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Error al copiar: No se encuentra la ruta de acceso 'C:\Datos\informe.xlsx' porque no existe.
