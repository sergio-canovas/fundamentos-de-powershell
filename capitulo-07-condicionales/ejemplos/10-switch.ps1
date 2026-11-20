# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: Switch

Write-Host "1. Ver la fecha"
Write-Host "2. Ver el nombre del equipo"
Write-Host "3. Ver la versión de PowerShell"
$opcion = Read-Host "Elige una opción"

switch ($opcion) {
    "1" { Get-Date }
    "2" { Write-Host $env:COMPUTERNAME }
    "3" { Write-Host $PSVersionTable.PSVersion }
    default { Write-Host "Opción no válida" }
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 1. Ver la fecha
# 2. Ver el nombre del equipo
# 3. Ver la versión de PowerShell
# Elige una opción: 3
# 7.6.10
