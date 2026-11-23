# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Solución del ejercicio de nivel 2
#
# Enunciado: Importa `equipos.csv` y muestra los equipos ordenados por número de puesto,
# de menor a mayor. ¿Salen en el orden correcto? Corrígelo y guarda el resultado en
# `equipos_ordenados.csv`, listo para abrirse con doble clic en un Excel en español.
# Usa -Encoding utf8BOM, que solo existe en PowerShell 7.

$importados | Sort-Object { [int]$_.Puesto } |
    Export-Csv -Path equipos_ordenados.csv -NoTypeInformation `
        -Delimiter ';' -Encoding utf8BOM

Get-Content -Path equipos_ordenados.csv

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# "Nombre";"Puesto";"SO";"Responsable"
# "VLC-1234567";"8";"Windows 10";"María"
# "VLC-1234568";"9";"Windows 11";"Íñigo"
# "VLC-1234569";"10";"Windows 11";"Begoña"
