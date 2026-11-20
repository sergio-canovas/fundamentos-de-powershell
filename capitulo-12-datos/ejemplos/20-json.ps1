# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: JSON

[PSCustomObject]@{ Nombre = "VLC-1234567"; Puesto = 8; Encendido = $true; Discos = @("C", "D") } | ConvertTo-Json

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# {
#   "Nombre": "VLC-1234567",
#   "Puesto": 8,
#   "Encendido": true,
#   "Discos": [
#     "C",
#     "D"
#   ]
# }
