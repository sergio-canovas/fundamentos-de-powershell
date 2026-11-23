# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: CSV > Añadir filas

$nuevo = [PSCustomObject]@{
    Nombre      = "VLC-1234570"
    Puesto      = 11
    SO          = "Windows 11"
    Responsable = "Jorge"
}
$nuevo | Export-Csv -Path equipos.csv -NoTypeInformation -Append
Get-Content -Path equipos.csv

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# "Nombre","Puesto","SO","Responsable"
# "VLC-1234567","8","Windows 10","María"
# "VLC-1234568","9","Windows 11","Íñigo"
# "VLC-1234569","10","Windows 11","Begoña"
# "VLC-1234570","11","Windows 11","Jorge"
