# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Solución del ejercicio de nivel 1
#
# Enunciado: Usa `Get-Command` para obtener todos los cmdlets cuyo sustantivo sea
# `Process`. ¿Cuál usarías para arrancar un programa? Después, averigua con `Get-Alias`
# qué cmdlets se esconden detrás de `cd`, `cls` y `cat`.

Get-Alias -Name cd, cls, cat

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Alias           cd -> Set-Location
# Alias           cls -> Clear-Host
# Alias           cat -> Get-Content
