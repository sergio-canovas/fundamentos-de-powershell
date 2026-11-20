# Fundamentos de PowerShell (2ª edición)
# Capítulo 2. Tu entorno: PowerShell 7 y Visual Studio Code.
# Solución del ejercicio de nivel 2
#
# Enunciado: Crea un script llamado `Info.ps1` que muestre tu nombre de usuario, el nombre
# del equipo y la versión de PowerShell. Pista: las variables de entorno `$env:USERNAME` y
# `$env:COMPUTERNAME` te serán útiles.

Write-Host "Usuario: $env:USERNAME"
Write-Host "Equipo: $env:COMPUTERNAME"
Write-Host "PowerShell: $($PSVersionTable.PSVersion)"
