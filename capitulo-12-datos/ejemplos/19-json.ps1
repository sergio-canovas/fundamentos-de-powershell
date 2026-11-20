# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: JSON

$equipos | ConvertTo-Json

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# [
#   {
#     "Nombre": "VLC-1234567",
#     "Puesto": 8,
#     "SO": "Windows 10",
#     "Responsable": "María"
#   },
#   {
#     "Nombre": "VLC-1234568",
#     "Puesto": 9,
#     "SO": "Windows 11",
#     "Responsable": "Íñigo"
#   },
#   {
#     "Nombre": "VLC-1234569",
#     "Puesto": 10,
#     "SO": "Windows 11",
#     "Responsable": "Begoña"
#   }
# ]
