# Fundamentos de PowerShell (2ª edición)
# Capítulo 14. Programar con IA.
# Apartado: Un ejemplo completo > Paso 2. Pedir mejor

$carpeta = "$HOME\Downloads"
$limite  = (Get-Date).AddDays(-30)

Get-ChildItem -Path $carpeta -File -Recurse |
    Where-Object { $_.LastWriteTime -lt $limite } |
    Remove-Item -WhatIf
