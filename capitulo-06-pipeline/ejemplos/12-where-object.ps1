# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Filtrando objetos > Where-Object

Get-Service | Where-Object {
    $_.Status -eq "Running" -and $_.Name -like "Win*"
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Status   Name               DisplayName
# ------   ----               -----------
# Running  WinDefend          Microsoft Defender Antivirus Service
# Running  WinHttpAutoProxyS… WinHTTP Web Proxy Auto-Discovery Serv…
# Running  Winmgmt            Windows Management Instrumentation
