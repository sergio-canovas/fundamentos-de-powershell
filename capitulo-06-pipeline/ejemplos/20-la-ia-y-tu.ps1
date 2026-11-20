# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: La IA y tú

Get-Process |
    Sort-Object -Property CPU -Descending |
    Select-Object -First 5 |
    Format-Table -Property Name, Id, CPU |
    Export-Csv -Path C:\Temp\procesos.csv
