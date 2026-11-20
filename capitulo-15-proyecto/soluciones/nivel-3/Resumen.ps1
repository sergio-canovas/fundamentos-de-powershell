# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Descripción: Solución del ejercicio de nivel 3: Resumen.ps1
# Guárdalo junto a Organizar.ps1, donde está registro.csv, o indícale dónde está:
# .\Resumen.ps1 -Registro C:\Practicas\Organizar\registro.csv

param (
    [string]$Registro = "$PSScriptRoot\registro.csv"
)

$filas = Import-Csv -Path $Registro

"Copiados por carpeta:"
$filas | Where-Object Resultado -eq "Copiado" |
    Group-Object -Property Destino |
    Select-Object -Property Name, Count

$errores = $filas | Where-Object Resultado -like "Error*"
"Errores: $(@($errores).Count)"
