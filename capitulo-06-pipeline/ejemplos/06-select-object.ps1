# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Select-Object

Get-Process | Select-Object -Property Id, ProcessName, CPU
