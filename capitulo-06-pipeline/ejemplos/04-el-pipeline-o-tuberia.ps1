# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: El pipeline o tubería

Get-Process -Name explorer |
    Select-Object -Property Id
