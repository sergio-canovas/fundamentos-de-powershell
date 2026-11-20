# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Los alias

Set-Alias -Name listar -Value Get-ChildItem
Get-Alias -Name listar

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Alias           listar -> Get-ChildItem
