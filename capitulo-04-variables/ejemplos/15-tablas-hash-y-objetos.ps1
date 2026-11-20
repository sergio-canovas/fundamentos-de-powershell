# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: Tipos de datos > Tablas hash y objetos

#Declaramos objeto
$miObjeto = [PSCustomObject]@{
    Equipo = "VLC-1234567"
    Puesto = 8
    SO     = "Windows 11"
}

#Llamamos al objeto
$miObjeto

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Equipo      Puesto SO
# ------      ------ --
# VLC-1234567      8 Windows 11
