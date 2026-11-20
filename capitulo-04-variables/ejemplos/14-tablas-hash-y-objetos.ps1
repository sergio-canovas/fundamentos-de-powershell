# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: Tipos de datos > Tablas hash y objetos

$miTabla = @{
    Equipo = "VLC-1234567"
    Puesto = 8
    SO     = "Windows 11"
}
$miTabla

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Name                           Value
# ----                           -----
# SO                             Windows 11
# Equipo                         VLC-1234567
# Puesto                         8
