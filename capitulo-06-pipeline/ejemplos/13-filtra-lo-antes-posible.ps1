# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Filtra lo antes posible

# Trae todos los archivos y después descarta los que no son .exe
Get-ChildItem -Path C:\Windows\System32 -File | Where-Object { $_.Extension -eq ".exe" }

# Pide directamente los .exe
Get-ChildItem -Path C:\Windows\System32 -File -Filter *.exe
