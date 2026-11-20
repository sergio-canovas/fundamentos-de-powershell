# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Where-Object

Get-Process | Where-Object -FilterScript {$_.CPU -gt 100}
