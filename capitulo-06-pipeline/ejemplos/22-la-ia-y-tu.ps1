# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: La IA y tú

Get-Process |
    Sort-Object -Property CPU -Descending |
    Select-Object -Property Name, Id, CPU -First 5 |
    Export-Csv -Path C:\Temp\procesos.csv -NoTypeInformation

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# "Name","Id","CPU"
# "MsMpEng","4120","9214,671875"
# "dwm","1768","3938,96875"
# "explorer","8236","1507,75"
# "svchost","2984","905,84375"
# "SearchHost","11380","577,625"
