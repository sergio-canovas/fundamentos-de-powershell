# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: La IA y tú

$limite = (Get-Date).AddDays(-30)
Get-ChildItem -Path "C:\Logs" -File |
    Where-Object { $_.LastWriteTime -lt $limite } |
    Remove-Item -WhatIf

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# What If: Realizando la operación "Quitar archivo" en el objetivo "C:\Logs\antiguo1.log".
# What If: Realizando la operación "Quitar archivo" en el objetivo "C:\Logs\antiguo2.log".
