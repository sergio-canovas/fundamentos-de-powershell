# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Descripción: Solución del ejercicio de nivel 1: Organizar.ps1 completo, con -Filtro
# Uso: .\Organizar.ps1 -Ruta C:\Temp\Kaos -Filtro *.jpg -WhatIf

[CmdletBinding(SupportsShouldProcess)]
param (
    [Parameter(Mandatory)]
    [string]$Ruta,

    [string]$Registro = "$PSScriptRoot\registro.csv",

    [string]$Filtro = "*"
)

# Importamos la función filtrador
. "$PSScriptRoot\filtrador.ps1"

# Comprobamos que la carpeta existe antes de empezar
if (-not (Test-Path -Path $Ruta -PathType Container)) {
    Write-Error "La carpeta $Ruta no existe."
    return
}

# Solo ficheros, y solo los que coinciden con el filtro
$listado = Get-ChildItem -Path $Ruta -File -Filter $Filtro

# Por cada fichero, llamamos a filtrador y guardamos lo que devuelve
$resultados = foreach ($fichero in $listado) {
    filtrador -Anio $fichero.LastWriteTime.Year -Ruta $Ruta -Nombre $fichero.Name
}

# Con -WhatIf no se copia nada, así que no hay nada que registrar
if ($resultados) {
    $resultados | Export-Csv -Path $Registro -NoTypeInformation -Append -Encoding UTF8
    $resultados | Format-Table -AutoSize
}
