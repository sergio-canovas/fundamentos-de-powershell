# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: Tildes, eñes y codificación

$equipos | Export-Csv -Path equipos.csv -NoTypeInformation -Encoding utf8
