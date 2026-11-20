# Fundamentos de PowerShell (2ª edición)
# Capítulo 14. Programar con IA.
# Solución del ejercicio de nivel 2
#
# Enunciado: Un compañero te pasa este script, que según él "limpia los logs antiguos del
# servidor". Encuentra al menos tres problemas antes de mirar la solución.

$limite = (Get-Date).AddDays(-90)

Get-ChildItem -Path "D:\Logs" -File |
    Where-Object { $_.CreationTime -lt $limite } |
    Remove-Item -WhatIf
